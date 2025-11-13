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

.field public static final whitelist CALL_TYPE_NONE:I = 0x0

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

.field public static final blacklist EMERGENCY_CALL_RAT_NR:Ljava/lang/String; = "VoLTE"

.field public static final blacklist EVENT_IMSDC_UPDATE_TELECOM_CALLID:Ljava/lang/String; = "IMSDC_UPDATE-TELECOM-CALLID"

.field public static final whitelist EXTRA_ADDITIONAL_CALL_INFO:Ljava/lang/String; = "AdditionalCallInfo"

.field public static final whitelist EXTRA_ADDITIONAL_SIP_INVITE_FIELDS:Ljava/lang/String; = "android.telephony.ims.extra.ADDITIONAL_SIP_INVITE_FIELDS"

.field public static final whitelist EXTRA_ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "android.telephony.ims.extra.ASSERTED_DISPLAY_NAME"

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

.field public static final blacklist EXTRA_CONFERENCE_AUDIO_QUALITY:Ljava/lang/String; = "audioQuality"

.field public static final greylist-max-o EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final blacklist EXTRA_CONFERENCE_DEPRECATED:Ljava/lang/String; = "conference"

.field public static final blacklist EXTRA_CONFERENCE_KEY:Ljava/lang/String; = "key"

.field public static final blacklist EXTRA_CONFERENCE_SIP_ERROR:Ljava/lang/String; = "sipError"

.field public static final blacklist EXTRA_CONFERENCE_VERSTAT:Ljava/lang/String; = "com.samsung.telephony.extra.ims.VERSTAT"

.field public static final whitelist EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final whitelist EXTRA_DISPLAY_TEXT:Ljava/lang/String; = "DisplayText"

.field public static final whitelist EXTRA_EMERGENCY_CALL:Ljava/lang/String; = "e_call"

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

.field public static final blacklist EXTRA_IS_ECALL_CONVERTED_TO_NORMAL:Ljava/lang/String; = "isECallConvertedToNormal"

.field public static final whitelist EXTRA_LOCATION:Ljava/lang/String; = "android.telephony.ims.extra.LOCATION"

.field public static final greylist-max-o EXTRA_OEM_EXTRAS:Ljava/lang/String; = "android.telephony.ims.extra.OEM_EXTRAS"

.field public static final whitelist EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final whitelist EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final whitelist EXTRA_PICTURE_URL:Ljava/lang/String; = "android.telephony.ims.extra.PICTURE_URL"

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.telephony.ims.extra.PRIORITY"

.field public static final whitelist EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final blacklist EXTRA_RESUME_HOST_AND_MERGE:Ljava/lang/String; = "ResumeHostAndMerge"

.field public static final blacklist EXTRA_RETRY_CALL_FAIL_NETWORKTYPE:Ljava/lang/String; = "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"

.field public static final blacklist EXTRA_RETRY_CALL_FAIL_REASON:Ljava/lang/String; = "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"

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

    new-instance v0, Landroid/telephony/ims/ImsCallProfile$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput-object p3, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o OIRToPresentation(I)I
    .locals 1

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

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

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v2

    const/4 v3, 0x4

    invoke-static {p0, v3}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x7

    return v1

    :cond_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    const/4 v1, 0x5

    return v1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    return v1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public static whitelist getVideoStateFromCallType(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    nop

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

    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->isVideoPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x5

    :goto_0
    return v0
.end method

.method private static greylist-max-o isVideoStateSet(II)Z
    .locals 1

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

    move-object v0, p0

    check-cast v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    return-object v0
.end method

.method private greylist-max-o maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-static {p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

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

    :cond_1
    return-object v1
.end method

.method public static greylist-max-r presentationToOIR(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

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

    invoke-static {p0}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-class v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    const-class v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/ims/ImsCallProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

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

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCallExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getCallType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return v0
.end method

.method public whitelist getCallerNumberVerificationStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public whitelist getEmergencyCallRouting()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    return v0
.end method

.method public whitelist getEmergencyServiceCategories()I
    .locals 1

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

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-object v0
.end method

.method public whitelist getProprietaryCallExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public whitelist getRestrictCause()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    return v0
.end method

.method public whitelist getServiceType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    return v0
.end method

.method public whitelist hasKnownUserIntentEmergency()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    return v0
.end method

.method public whitelist isEmergencyCallTesting()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    return v0
.end method

.method public whitelist isVideoCall()Z
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVideoPaused()Z
    .locals 1

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

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public whitelist setCallExtraInt(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public whitelist setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public blacklist setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist setCallExtraStringArrayList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public whitelist setCallRestrictCause(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    return-void
.end method

.method public whitelist setCallerNumberVerificationStatus(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    return-void
.end method

.method public blacklist setEmergencyCallInfo(Landroid/telephony/emergency/EmergencyNumber;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyServiceCategories(I)V

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyUrns(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallRouting(I)V

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

    invoke-virtual {p0, p2}, Landroid/telephony/ims/ImsCallProfile;->setHasKnownUserIntentEmergency(Z)V

    return-void
.end method

.method public whitelist setEmergencyCallRouting(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    return-void
.end method

.method public whitelist setEmergencyCallTesting(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    return-void
.end method

.method public whitelist setEmergencyServiceCategories(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

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

    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    return-void
.end method

.method public whitelist setHasKnownUserIntentEmergency(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

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

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

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

    return-object v0
.end method

.method public whitelist updateCallExtras(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist updateCallType(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1

    iget v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return-void
.end method

.method public whitelist updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1

    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method
