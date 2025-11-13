.class public final Landroid/telephony/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallProfile$VerificationStatus;,
        Landroid/telephony/ims/ImsCallProfile$CallRestrictCause;
    }
.end annotation


# static fields
.field public static final whitelist CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final whitelist CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final whitelist CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final whitelist CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final whitelist CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final whitelist CALL_TYPE_VOICE:I = 0x2

.field public static final whitelist CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final whitelist CALL_TYPE_VS:I = 0x8

.field public static final whitelist CALL_TYPE_VS_RX:I = 0xa

.field public static final whitelist CALL_TYPE_VS_TX:I = 0x9

.field public static final whitelist CALL_TYPE_VT:I = 0x4

.field public static final whitelist CALL_TYPE_VT_NODIR:I = 0x7

.field public static final whitelist CALL_TYPE_VT_RX:I = 0x6

.field public static final whitelist CALL_TYPE_VT_TX:I = 0x5

.field public static final blacklist CMC_PD_STATE_CONFERENCE:I = 0x1

.field public static final blacklist CMC_PD_STATE_EMERGENCY:I = 0x2

.field public static final blacklist CMC_PD_STATE_NONE:I = 0x0

.field public static final blacklist CMC_TYPE_NONE:I = 0x0

.field public static final blacklist CMC_TYPE_PD:I = 0x1

.field public static final blacklist CMC_TYPE_SD:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIALSTRING_NORMAL:I = 0x0

.field public static final whitelist DIALSTRING_SS_CONF:I = 0x1

.field public static final whitelist DIALSTRING_USSD:I = 0x2

.field public static final blacklist EMERGENCY_CALL_RAT_IWLAN:Ljava/lang/String; = "VoWIFI"

.field public static final blacklist EMERGENCY_CALL_RAT_LTE:Ljava/lang/String; = "VoLTE"

.field public static final whitelist EXTRA_ADDITIONAL_CALL_INFO:Ljava/lang/String; = "AdditionalCallInfo"

.field public static final whitelist EXTRA_ADDITIONAL_SIP_INVITE_FIELDS:Ljava/lang/String; = "android.telephony.ims.extra.ADDITIONAL_SIP_INVITE_FIELDS"

.field public static final whitelist EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

.field public static final greylist-max-o EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final whitelist EXTRA_CALL_NETWORK_TYPE:Ljava/lang/String; = "android.telephony.ims.extra.CALL_NETWORK_TYPE"

.field public static final whitelist EXTRA_CALL_RAT_TYPE:Ljava/lang/String; = "CallRadioTech"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_CALL_RAT_TYPE_ALT:Ljava/lang/String; = "callRadioTech"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telephony.ims.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CHILD_NUMBER:Ljava/lang/String; = "ChildNum"

.field public static final whitelist EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final whitelist EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final whitelist EXTRA_CODEC:Ljava/lang/String; = "Codec"

.field public static final whitelist EXTRA_CONFERENCE:Ljava/lang/String; = "android.telephony.ims.extra.CONFERENCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CONFERENCE_AUDIO_QUALITY:Ljava/lang/String; = "audioQuality"

.field public static final greylist-max-o EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final blacklist EXTRA_CONFERENCE_DEPRECATED:Ljava/lang/String; = "conference"

.field public static final whitelist EXTRA_CONFERENCE_KEY:Ljava/lang/String; = "key"

.field public static final whitelist EXTRA_CONFERENCE_SIP_ERROR:Ljava/lang/String; = "sipError"

.field public static final whitelist EXTRA_CONFERENCE_VERSTAT:Ljava/lang/String; = "com.samsung.telephony.extra.ims.VERSTAT"

.field public static final whitelist EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final whitelist EXTRA_DISPLAY_TEXT:Ljava/lang/String; = "DisplayText"

.field public static final whitelist EXTRA_EMERGENCY_CALL:Ljava/lang/String; = "e_call"

.field public static final blacklist EXTRA_EMERGENCY_SERVICE_CATEGORY:Ljava/lang/String; = "EccCat"

.field public static final whitelist EXTRA_EXTENDING_TO_CONFERENCE_SUPPORTED:Ljava/lang/String; = "android.telephony.ims.extra.EXTENDING_TO_CONFERENCE_SUPPORTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_FEATURE_CAPABILITY:Ljava/lang/String; = "feature_caps"

.field public static final whitelist EXTRA_FORWARDED_NUMBER:Ljava/lang/String; = "android.telephony.ims.extra.FORWARDED_NUMBER"

.field public static final blacklist EXTRA_IMS_ECM_SUPPORT:Ljava/lang/String; = "imsEcmSupport"

.field public static final blacklist EXTRA_IMS_EMERGENCY_CALL_RAT:Ljava/lang/String; = "imsEmergencyRat"

.field public static final whitelist EXTRA_IS_BUSINESS_CALL:Ljava/lang/String; = "android.telephony.ims.extra.IS_BUSINESS_CALL"

.field public static final whitelist EXTRA_IS_CALL_PULL:Ljava/lang/String; = "CallPull"

.field public static final whitelist EXTRA_IS_CROSS_SIM_CALL:Ljava/lang/String; = "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

.field public static final whitelist EXTRA_LOCATION:Ljava/lang/String; = "android.telephony.ims.extra.LOCATION"

.field public static final greylist-max-o EXTRA_OEM_EXTRAS:Ljava/lang/String; = "android.telephony.ims.extra.OEM_EXTRAS"

.field public static final whitelist EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final whitelist EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final whitelist EXTRA_PICTURE_URL:Ljava/lang/String; = "android.telephony.ims.extra.PICTURE_URL"

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.telephony.ims.extra.PRIORITY"

.field public static final whitelist EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final blacklist EXTRA_RETRY_CALL_FAIL_NETWORKTYPE:Ljava/lang/String; = "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"

.field public static final blacklist EXTRA_RETRY_CALL_FAIL_REASON:Ljava/lang/String; = "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"

.field public static final blacklist EXTRA_SUPPORT_HELD_HOST_MERGE:Ljava/lang/String; = "SupportHeldHostMerge"

.field public static final whitelist EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final greylist-max-o EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final whitelist OIR_DEFAULT:I = 0x0

.field public static final whitelist OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final whitelist OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final whitelist OIR_PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final blacklist PROPERTY_RAW_INVITE_MESSAGE:Ljava/lang/String; = "RawInviteMessage"

.field public static final whitelist SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final whitelist SERVICE_TYPE_NONE:I = 0x0

.field public static final whitelist SERVICE_TYPE_NORMAL:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsCallProfile"

.field public static final whitelist VERIFICATION_STATUS_FAILED:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_NOT_VERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATUS_PASSED:I = 0x1


# instance fields
.field private blacklist mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-r mCallExtras:Landroid/os/Bundle;

.field public greylist-max-r mCallType:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private blacklist mEmergencyCallRouting:I

.field private blacklist mEmergencyCallTesting:Z

.field private blacklist mEmergencyServiceCategories:I

.field private blacklist mEmergencyUrns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasKnownUserIntentEmergency:Z

.field public greylist-max-r mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

.field public greylist-max-r mRestrictCause:I

.field public greylist-max-o mServiceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 937
    new-instance v0, Landroid/telephony/ims/ImsCallProfile$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 602
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 625
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 629
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 632
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 634
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 675
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 676
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 677
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 678
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 679
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 602
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 625
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 629
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 632
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 634
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 701
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 702
    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 703
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 704
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 705
    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .param p3, "callExtras"    # Landroid/os/Bundle;
    .param p4, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 602
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 625
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 629
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 632
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 634
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 730
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 731
    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 732
    iput-object p3, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 733
    iput-object p4, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 734
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 602
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 625
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 629
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 632
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 634
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 667
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 668
    return-void
.end method

.method public static greylist-max-o OIRToPresentation(I)I
    .locals 1
    .param p0, "oir"    # I

    .line 1097
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 1109
    return v0

    .line 1105
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1103
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1107
    :pswitch_2
    return v0

    .line 1101
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 1099
    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist getCallTypeFromVideoState(I)I
    .locals 5
    .param p0, "videoState"    # I

    .line 1043
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v0

    .line 1044
    .local v0, "videoTx":Z
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v2

    .line 1045
    .local v2, "videoRx":Z
    const/4 v3, 0x4

    invoke-static {p0, v3}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v4

    .line 1046
    .local v4, "isPaused":Z
    if-eqz v4, :cond_0

    .line 1047
    const/4 v1, 0x7

    return v1

    .line 1048
    :cond_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 1049
    const/4 v1, 0x5

    return v1

    .line 1050
    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 1051
    const/4 v1, 0x6

    return v1

    .line 1052
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 1053
    return v3

    .line 1055
    :cond_3
    return v1
.end method

.method public static whitelist getVideoStateFromCallType(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 1014
    const/4 v0, 0x0

    .line 1015
    .local v0, "videostate":I
    packed-switch p0, :pswitch_data_0

    .line 1029
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1020
    :pswitch_1
    const/4 v0, 0x2

    .line 1021
    goto :goto_0

    .line 1017
    :pswitch_2
    const/4 v0, 0x1

    .line 1018
    goto :goto_0

    .line 1023
    :pswitch_3
    const/4 v0, 0x3

    .line 1024
    goto :goto_0

    .line 1026
    :pswitch_4
    const/4 v0, 0x0

    .line 1027
    nop

    .line 1032
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I
    .locals 2
    .param p0, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 999
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 1000
    .local v0, "videostate":I
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->isVideoPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1003
    :cond_0
    and-int/lit8 v0, v0, -0x5

    .line 1005
    :goto_0
    return v0
.end method

.method private static greylist-max-o isVideoStateSet(II)Z
    .locals 1
    .param p0, "videoState"    # I
    .param p1, "videoStateToCheck"    # I

    .line 1163
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$readFromParcel$0(Ljava/lang/Object;)Landroid/telephony/ims/RtpHeaderExtensionType;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 934
    move-object v0, p0

    check-cast v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    return-object v0
.end method

.method private greylist-max-o maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1141
    if-nez p1, :cond_0

    .line 1142
    const/4 v0, 0x0

    return-object v0

    .line 1145
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 1146
    .local v0, "startSize":I
    invoke-static {p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1147
    .local v1, "filtered":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    .line 1148
    .local v2, "endSize":I
    if-eq v0, v2, :cond_1

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maybeCleanseExtras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra values were removed - only primitive types and system parcelables are permitted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsCallProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_1
    return-object v1
.end method

.method public static greylist-max-r presentationToOIR(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1065
    packed-switch p0, :pswitch_data_0

    .line 1077
    const/4 v0, 0x0

    return v0

    .line 1075
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1071
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1073
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1067
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 1069
    :pswitch_4
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist presentationToOir(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1087
    invoke-static {p0}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 923
    const-class v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 925
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    .line 931
    const-class v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 933
    .local v0, "accepted":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/ims/ImsCallProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile$$ExternalSyntheticLambda0;-><init>()V

    .line 934
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 935
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAcceptedRtpHeaderExtensionTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 737
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 741
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 742
    return-object p2

    .line 745
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 753
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 754
    return p2

    .line 757
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 761
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 765
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 766
    return p2

    .line 769
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 779
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 782
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCallExtras()Landroid/os/Bundle;
    .locals 1

    .line 967
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getCallType()I
    .locals 1

    .line 955
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return v0
.end method

.method public whitelist getCallerNumberVerificationStatus()I
    .locals 1

    .line 876
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public whitelist getEmergencyCallRouting()I
    .locals 1

    .line 1308
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    return v0
.end method

.method public whitelist getEmergencyServiceCategories()I
    .locals 1

    .line 1282
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    return v0
.end method

.method public whitelist getEmergencyUrns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 1

    .line 988
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-object v0
.end method

.method public whitelist getProprietaryCallExtras()Landroid/os/Bundle;
    .locals 2

    .line 976
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 977
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 979
    :cond_0
    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 980
    .local v0, "proprietaryExtras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 981
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v1

    .line 984
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public whitelist getRestrictCause()I
    .locals 1

    .line 963
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    return v0
.end method

.method public whitelist getServiceType()I
    .locals 1

    .line 951
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    return v0
.end method

.method public whitelist hasKnownUserIntentEmergency()Z
    .locals 1

    .line 1327
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    return v0
.end method

.method public whitelist isEmergencyCallTesting()Z
    .locals 1

    .line 1315
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    return v0
.end method

.method public whitelist isVideoCall()Z
    .locals 1

    .line 1127
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVideoPaused()Z
    .locals 1

    .line 1118
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist setAcceptedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .line 1355
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1356
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1357
    return-void
.end method

.method public whitelist setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 786
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_0
    return-void
.end method

.method public whitelist setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 792
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 795
    :cond_0
    return-void
.end method

.method public whitelist setCallExtraInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 798
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    :cond_0
    return-void
.end method

.method public whitelist setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parcelable"    # Landroid/os/Parcelable;

    .line 825
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 828
    :cond_0
    return-void
.end method

.method public whitelist setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 804
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 807
    :cond_0
    return-void
.end method

.method public whitelist setCallExtraStringArrayList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 810
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 811
    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 813
    :cond_0
    return-void
.end method

.method public whitelist setCallRestrictCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 835
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 836
    return-void
.end method

.method public whitelist setCallerNumberVerificationStatus(I)V
    .locals 0
    .param p1, "callerNumberVerificationStatus"    # I

    .line 867
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    .line 868
    return-void
.end method

.method public blacklist setEmergencyCallInfo(Landroid/telephony/emergency/EmergencyNumber;Z)V
    .locals 2
    .param p1, "num"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "hasKnownUserIntentEmergency"    # Z

    .line 1177
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyServiceCategories(I)V

    .line 1178
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyUrns(Ljava/util/List;)V

    .line 1179
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallRouting(I)V

    .line 1180
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallTesting(Z)V

    .line 1182
    invoke-virtual {p0, p2}, Landroid/telephony/ims/ImsCallProfile;->setHasKnownUserIntentEmergency(Z)V

    .line 1183
    return-void
.end method

.method public whitelist setEmergencyCallRouting(I)V
    .locals 0
    .param p1, "emergencyCallRouting"    # I

    .line 1235
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 1236
    return-void
.end method

.method public whitelist setEmergencyCallTesting(Z)V
    .locals 0
    .param p1, "isTesting"    # Z

    .line 1244
    iput-boolean p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 1245
    return-void
.end method

.method public whitelist setEmergencyServiceCategories(I)V
    .locals 0
    .param p1, "emergencyServiceCategories"    # I

    .line 1207
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 1208
    return-void
.end method

.method public whitelist setEmergencyUrns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1219
    .local p1, "emergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 1220
    return-void
.end method

.method public whitelist setHasKnownUserIntentEmergency(Z)V
    .locals 0
    .param p1, "hasKnownUserIntentEmergency"    # Z

    .line 1257
    iput-boolean p1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 1258
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 885
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyServiceCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyUrns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyCallRouting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyCallTesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasKnownUserIntentEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRestrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallerNumberVerstat= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAcceptedRtpHeaderExtensions= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    return-object v0
.end method

.method public whitelist updateCallExtras(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 843
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 844
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 845
    return-void
.end method

.method public whitelist updateCallType(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 839
    iget v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 840
    return-void
.end method

.method public whitelist updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 853
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 854
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 904
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 905
    .local v0, "filteredExtras":Landroid/os/Bundle;
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 908
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 909
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 911
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 913
    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 914
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 917
    return-void
.end method
