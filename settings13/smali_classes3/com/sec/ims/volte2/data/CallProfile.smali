.class public Lcom/sec/ims/volte2/data/CallProfile;
.super Ljava/lang/Object;
.source "CallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/CallProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalSipHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertInfo:Ljava/lang/String;

.field private mAudioEarlyMediaDir:I

.field private mAudioRxTrackId:I

.field private mCLI:Ljava/lang/String;

.field private mCallType:I

.field private mCmcBoundSessionId:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCmcDeviceId:Ljava/lang/String;

.field private mCmcDtmfKey:I

.field private mCmcEdCallSlot:I

.field private mCmcRecordEvent:I

.field private mCmcType:I

.field private mComposerData:Landroid/os/Bundle;

.field private mConferenceCall:I

.field private mConferenceSupported:Ljava/lang/String;

.field private mDelayRinging:Z

.field private mDialingDevice:Ljava/lang/String;

.field private mDialingNumber:Ljava/lang/String;

.field private mDialogId:Ljava/lang/String;

.field private mDirection:I

.field private mDtmfEvent:Ljava/lang/String;

.field private mEPSFBsuccess:Z

.field private mEchoCallId:Ljava/lang/String;

.field private mEchoCellId:Ljava/lang/String;

.field private mEmergencyRat:Ljava/lang/String;

.field private mEnableScr:Z

.field private mFeatureCaps:Ljava/lang/String;

.field private mForceCSFB:Z

.field private mForegroundSessionId:I

.field private mHDIcon:I

.field private mHasCSFBError:Z

.field private mHasDiversion:Z

.field private mHasRemoteVideoCapa:Z

.field private mHistoryInfo:Ljava/lang/String;

.field private mIsCrossSimCall:Z

.field private mIsDowngradedAtEstablish:Z

.field private mIsDowngradedVideoCall:Z

.field private mIsFocus:Ljava/lang/String;

.field private mIsPullCall:Z

.field private mIsRemoteHeld:Z

.field private mIsSamsungMdmnCall:Z

.field private mIsVideoCrbt:Z

.field private mIsVideoCrbtValid:Z

.field private mLetteringText:Ljava/lang/String;

.field private mLineMsisdn:Ljava/lang/String;

.field private mLocalHoldTone:Ljava/lang/String;

.field private mMTConference:Ljava/lang/String;

.field private mMaxConferenceCallUsers:I

.field private mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

.field private mModifyHeader:Ljava/lang/String;

.field private mNetworkType:I

.field private mNumberPlus:Ljava/lang/String;

.field private mOriginatingUri:Lcom/sec/ims/util/ImsUri;

.field private mP2p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mPhotoRing:Ljava/lang/String;

.field private mRadioTech:I

.field private mRecordState:I

.field private mReferredBy:Ljava/lang/String;

.field private mRejectCause:I

.field private mRejectCode:I

.field private mRejectProtocol:Ljava/lang/String;

.field private mRejectText:Ljava/lang/String;

.field private mReplaceSipCallId:Ljava/lang/String;

.field private mRetryAfterTime:I

.field private mSipCallId:Ljava/lang/String;

.field private mSipInviteMsg:Ljava/lang/String;

.field private mUrn:Ljava/lang/String;

.field private mVCrtIsAlerting:Z

.field private mVerstat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1683
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    .line 63
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    .line 83
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    .line 86
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    const/4 v2, 0x0

    .line 88
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    .line 89
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    .line 100
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    .line 101
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mModifyHeader:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMTConference:Ljava/lang/String;

    .line 103
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    .line 104
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRetryAfterTime:I

    .line 105
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMaxConferenceCallUsers:I

    .line 106
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLocalHoldTone:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    .line 110
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    const/4 v3, 0x1

    .line 121
    iput-boolean v3, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEnableScr:Z

    .line 123
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    .line 125
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    .line 126
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    .line 127
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    .line 129
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    .line 130
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    .line 132
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    .line 133
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    .line 134
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    .line 135
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsCrossSimCall:Z

    .line 136
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    .line 137
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    .line 138
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    .line 139
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    .line 140
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    .line 142
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    .line 145
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioRxTrackId:I

    .line 146
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    .line 147
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcRecordEvent:I

    .line 148
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    .line 149
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    .line 150
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    .line 151
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    .line 152
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    .line 153
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    .line 154
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    .line 155
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCause:I

    .line 157
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    .line 158
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    .line 159
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCellId:Ljava/lang/String;

    .line 160
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCallId:Ljava/lang/String;

    .line 163
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    .line 164
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    .line 165
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEPSFBsuccess:Z

    .line 167
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    .line 178
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    .line 63
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    .line 83
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    .line 86
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    const/4 v2, 0x0

    .line 88
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    .line 89
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    .line 100
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    .line 101
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mModifyHeader:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMTConference:Ljava/lang/String;

    .line 103
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    .line 104
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRetryAfterTime:I

    .line 105
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMaxConferenceCallUsers:I

    .line 106
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLocalHoldTone:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    .line 110
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    const/4 v3, 0x1

    .line 121
    iput-boolean v3, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEnableScr:Z

    .line 123
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    .line 125
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    .line 126
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    .line 127
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    .line 129
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    .line 130
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    .line 132
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    .line 133
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    .line 134
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    .line 135
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsCrossSimCall:Z

    .line 136
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    .line 137
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    .line 138
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    .line 139
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    .line 140
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    .line 142
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    .line 145
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioRxTrackId:I

    .line 146
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    .line 147
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcRecordEvent:I

    .line 148
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    .line 149
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    .line 150
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    .line 151
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    .line 152
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    .line 153
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    .line 154
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    .line 155
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCause:I

    .line 157
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    .line 158
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    .line 159
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCellId:Ljava/lang/String;

    .line 160
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCallId:Ljava/lang/String;

    .line 163
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    .line 164
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    .line 165
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEPSFBsuccess:Z

    .line 167
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    .line 170
    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/CallProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    goto :goto_0

    .line 316
    :cond_0
    iput-object v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    .line 318
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    goto :goto_1

    .line 323
    :cond_1
    iput-object v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    .line 325
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceSupported:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsFocus:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    .line 338
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    .line 342
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    .line 345
    const-class v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/data/MediaProfile;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "extra_header"

    .line 353
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAdditionalSipHeaders:Ljava/util/HashMap;

    .line 356
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v3

    :goto_6
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_7

    :cond_a
    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    .line 362
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_c

    move v0, v2

    goto :goto_8

    :cond_c
    move v0, v3

    :goto_8
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_d

    move v0, v2

    goto :goto_9

    :cond_d
    move v0, v3

    :goto_9
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_a

    :cond_e
    move v0, v3

    :goto_a
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    goto :goto_b

    .line 374
    :cond_f
    iput-object v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    .line 376
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_c

    :cond_10
    move v0, v3

    :goto_c
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_11

    move v0, v2

    goto :goto_d

    :cond_11
    move v0, v3

    :goto_d
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_12

    move v0, v2

    goto :goto_e

    :cond_12
    move v0, v3

    :goto_e
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_13

    goto :goto_f

    :cond_13
    move v2, v3

    :goto_f
    iput-boolean v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 403
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    const/4 v1, 0x2

    const-string v2, "UNKNOWN"

    const/4 v3, 0x1

    const-string v4, "callType: ["

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CALL_TYPE_VIDEO"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CALL_TYPE_VOICE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], direction: ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    iget v4, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    if-eqz v4, :cond_5

    if-eq v4, v3, :cond_4

    if-eq v4, v1, :cond_3

    const/4 v1, 0x3

    if-eq v4, v1, :cond_2

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 428
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PULLED_MT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 425
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PULLED_MO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 422
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 419
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], networkType: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    iget v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_9

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_7

    const/16 v3, 0xb

    if-eq v1, v3, :cond_6

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 443
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IMS"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 440
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 437
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MOBILE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 446
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NONE (emergency)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mIsVideoCrbt: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mIsVideoCrbtValid: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mP2p: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    const-string v0, "null"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mCmcBoundSessionId: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mRejectProtocol: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mRejectCode: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mRejectText: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mIsRemoteHeld: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], mCmcEdCallSlot: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceSupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsFocus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 236
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 243
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    :goto_3
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 249
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAdditionalSipHeaders:Ljava/util/HashMap;

    if-eqz p2, :cond_5

    .line 255
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 257
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAdditionalSipHeaders:Ljava/util/HashMap;

    const-string v3, "extra_header"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 258
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_4

    .line 260
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    :goto_4
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 267
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 270
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    :goto_5
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 277
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 282
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 285
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    :goto_6
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 290
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget p0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
