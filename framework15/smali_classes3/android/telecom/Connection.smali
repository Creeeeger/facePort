.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$CallFilteringCompletionInfo;,
        Landroid/telecom/Connection$RttModifyStatus;,
        Landroid/telecom/Connection$RttTextStream;,
        Landroid/telecom/Connection$AudioCodec;,
        Landroid/telecom/Connection$VerificationStatus;,
        Landroid/telecom/Connection$ConnectionState;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CODEC_AMR:I = 0x1

.field public static final whitelist AUDIO_CODEC_AMR_WB:I = 0x2

.field public static final whitelist AUDIO_CODEC_EVRC:I = 0x4

.field public static final whitelist AUDIO_CODEC_EVRC_B:I = 0x5

.field public static final whitelist AUDIO_CODEC_EVRC_NW:I = 0x7

.field public static final whitelist AUDIO_CODEC_EVRC_WB:I = 0x6

.field public static final whitelist AUDIO_CODEC_EVS_FB:I = 0x14

.field public static final whitelist AUDIO_CODEC_EVS_NB:I = 0x11

.field public static final whitelist AUDIO_CODEC_EVS_SWB:I = 0x13

.field public static final whitelist AUDIO_CODEC_EVS_WB:I = 0x12

.field public static final whitelist AUDIO_CODEC_G711A:I = 0xd

.field public static final whitelist AUDIO_CODEC_G711AB:I = 0xf

.field public static final whitelist AUDIO_CODEC_G711U:I = 0xb

.field public static final whitelist AUDIO_CODEC_G722:I = 0xe

.field public static final whitelist AUDIO_CODEC_G723:I = 0xc

.field public static final whitelist AUDIO_CODEC_G729:I = 0x10

.field public static final whitelist AUDIO_CODEC_GSM_EFR:I = 0x8

.field public static final whitelist AUDIO_CODEC_GSM_FR:I = 0x9

.field public static final whitelist AUDIO_CODEC_GSM_HR:I = 0xa

.field public static final whitelist AUDIO_CODEC_NONE:I = 0x0

.field public static final whitelist AUDIO_CODEC_QCELP13K:I = 0x3

.field public static final whitelist CAPABILITY_ADD_PARTICIPANT:I = 0x4000000

.field public static final whitelist CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final whitelist CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final whitelist CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final whitelist CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final whitelist CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final whitelist CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final whitelist CAPABILITY_HOLD:I = 0x1

.field public static final whitelist CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final whitelist CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final whitelist CAPABILITY_MUTE:I = 0x40

.field public static final whitelist CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT:I = 0x20000000

.field public static final whitelist CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final whitelist CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final whitelist CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final whitelist CAPABILITY_SUPPORT_DEFLECT:I = 0x2000000

.field public static final whitelist CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final whitelist CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final blacklist CAPABILITY_TRANSFER:I = 0x8000000

.field public static final blacklist CAPABILITY_TRANSFER_CONSULTATIVE:I = 0x10000000

.field public static final greylist-max-o CAPABILITY_UNUSED:I = 0x10

.field public static final greylist-max-o CAPABILITY_UNUSED_2:I = 0x4000

.field public static final greylist-max-o CAPABILITY_UNUSED_3:I = 0x8000

.field public static final greylist-max-o CAPABILITY_UNUSED_4:I = 0x10000

.field public static final greylist-max-o CAPABILITY_UNUSED_5:I = 0x20000

.field public static final whitelist EVENT_CALL_HOLD_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_HOLD_FAILED"

.field public static final whitelist EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final whitelist EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final blacklist EVENT_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.event.CALL_QUALITY_REPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final whitelist EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final whitelist EVENT_CALL_SWITCH_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_SWITCH_FAILED"

.field public static final whitelist EVENT_DEVICE_TO_DEVICE_MESSAGE:Ljava/lang/String; = "android.telecom.event.DEVICE_TO_DEVICE_MESSAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_MERGE_COMPLETE:Ljava/lang/String; = "android.telecom.event.MERGE_COMPLETE"

.field public static final whitelist EVENT_MERGE_START:Ljava/lang/String; = "android.telecom.event.MERGE_START"

.field public static final whitelist EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final whitelist EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final whitelist EVENT_RTT_AUDIO_INDICATION_CHANGED:Ljava/lang/String; = "android.telecom.event.RTT_AUDIO_INDICATION_CHANGED"

.field public static final blacklist EXTRA_ADD_TO_CONFERENCE_ID:Ljava/lang/String; = "android.telecom.extra.ADD_TO_CONFERENCE_ID"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL_APP_NAME:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL_APP_NAME"

.field public static final whitelist EXTRA_AUDIO_CODEC:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC"

.field public static final whitelist EXTRA_AUDIO_CODEC_BANDWIDTH_KHZ:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BANDWIDTH_KHZ"

.field public static final whitelist EXTRA_AUDIO_CODEC_BITRATE_KBPS:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BITRATE_KBPS"

.field public static final blacklist EXTRA_CALLER_NUMBER_VERIFICATION_STATUS:Ljava/lang/String; = "android.telecom.extra.CALLER_NUMBER_VERIFICATION_STATUS"

.field public static final blacklist EXTRA_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.extra.CALL_QUALITY_REPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_TYPE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_VALUE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_VALUE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE:Ljava/lang/String; = "android.telecom.extra.IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE"

.field public static final whitelist EXTRA_IS_RTT_AUDIO_PRESENT:Ljava/lang/String; = "android.telecom.extra.IS_RTT_AUDIO_PRESENT"

.field public static final blacklist EXTRA_KEY_QUERY_LOCATION:Ljava/lang/String; = "android.telecom.extra.KEY_QUERY_LOCATION"

.field public static final whitelist EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final whitelist EXTRA_LAST_KNOWN_CELL_IDENTITY:Ljava/lang/String; = "android.telecom.extra.LAST_KNOWN_CELL_IDENTITY"

.field public static final greylist-max-o EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field public static final blacklist EXTRA_REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

.field public static final blacklist EXTRA_REMOTE_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_SIP_INVITE:Ljava/lang/String; = "android.telecom.extra.SIP_INVITE"

.field private static final greylist-max-o PII_DEBUG:Z

.field public static final whitelist PROPERTY_ASSISTED_DIALING:I = 0x200

.field public static final whitelist PROPERTY_CROSS_SIM:I = 0x2000

.field public static final whitelist PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_GENERIC_CONFERENCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final whitelist PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final whitelist PROPERTY_IS_ADHOC_CONFERENCE:I = 0x1000

.field public static final whitelist PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final whitelist PROPERTY_IS_RTT:I = 0x100

.field public static final whitelist PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL:I = 0x400

.field public static final whitelist PROPERTY_REMOTELY_HOSTED:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_SELF_MANAGED:I = 0x80

.field public static final whitelist PROPERTY_WIFI:I = 0x8

.field public static final whitelist SEM_EVENT_CALL_CMC_SECONDARY_DEVICE_PULL:Ljava/lang/String; = "com.samsung.telecom.event.CALL_SECONDARY_DEVICE_PULL"

.field public static final whitelist STATE_ACTIVE:I = 0x4

.field public static final whitelist STATE_DIALING:I = 0x3

.field public static final whitelist STATE_DISCONNECTED:I = 0x6

.field public static final whitelist STATE_HOLDING:I = 0x5

.field public static final whitelist STATE_INITIALIZING:I = 0x0

.field public static final whitelist STATE_NEW:I = 0x1

.field public static final whitelist STATE_PULLING_CALL:I = 0x7

.field public static final whitelist STATE_RINGING:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_FAILED:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_NOT_VERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATUS_PASSED:I = 0x1


# instance fields
.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mAddressPresentation:I

.field private greylist-max-o mAudioModeIsVoip:Z

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private blacklist mCallEndpoint:Landroid/telecom/CallEndpoint;

.field private greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private greylist-max-o mCallerDisplayNamePresentation:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private greylist-max-o mConference:Landroid/telecom/Conference;

.field private final greylist-max-o mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectElapsedTimeMillis:J

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionService:Landroid/telecom/ConnectionService;

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private greylist-max-o mVideoState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$JahkKOxFKkY-gacugt0mnHTRRBk(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRemoteRttRequest$3(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZnUXAsXgeKGu05i3oqkSpsFyedw(Landroid/telecom/Connection;ILandroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/Connection;->lambda$sendRttInitiationFailure$1(ILandroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_bl6hDpVI8EEHWuYBg2ktuMWrCQ(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/telecom/Connection;->lambda$queryLocationForEmergency$4(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oHNs3vcdZZ_zqap02juDe8xqVkY(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRttInitiationSuccess$0(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vj11ZMjrmOJeXCaLqOrL35Bzc-g(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRttSessionRemotelyTerminated$2(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConferenceables(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Connection;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/telecom/Log;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    iput v3, p0, Landroid/telecom/Connection;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    const/16 v0, 0x1f

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    return-void
.end method

.method public static whitelist capabilitiesToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_1

    const-string v1, " CAPABILITY_HOLD"

    goto :goto_0

    :cond_1
    const-string v1, " hld"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    goto :goto_1

    :cond_3
    const-string v1, " sup_hld"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_5

    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    goto :goto_2

    :cond_5
    const-string v1, " mrg_cnf"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    if-eqz p1, :cond_7

    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    goto :goto_3

    :cond_7
    const-string v1, " swp_cnf"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_a

    if-eqz p1, :cond_9

    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    goto :goto_4

    :cond_9
    const-string v1, " txt"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_c

    if-eqz p1, :cond_b

    const-string v1, " CAPABILITY_MUTE"

    goto :goto_5

    :cond_b
    const-string v1, " mut"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_e

    if-eqz p1, :cond_d

    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    goto :goto_6

    :cond_d
    const-string v1, " mng_cnf"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_10

    if-eqz p1, :cond_f

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    goto :goto_7

    :cond_f
    const-string v1, " VTlrx"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_12

    if-eqz p1, :cond_11

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    goto :goto_8

    :cond_11
    const-string v1, " VTltx"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    and-int/lit16 v1, p0, 0x300

    const/16 v2, 0x300

    if-ne v1, v2, :cond_14

    if-eqz p1, :cond_13

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    goto :goto_9

    :cond_13
    const-string v1, " VTlbi"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_16

    if-eqz p1, :cond_15

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    goto :goto_a

    :cond_15
    const-string v1, " VTrrx"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_18

    if-eqz p1, :cond_17

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    goto :goto_b

    :cond_17
    const-string v1, " VTrtx"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    and-int/lit16 v1, p0, 0xc00

    const/16 v2, 0xc00

    if-ne v1, v2, :cond_1a

    if-eqz p1, :cond_19

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    goto :goto_c

    :cond_19
    const-string v1, " VTrbi"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const/high16 v1, 0x800000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1c

    if-eqz p1, :cond_1b

    const-string v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    goto :goto_d

    :cond_1b
    const-string v1, " !v2a"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const/high16 v1, 0x40000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1e

    if-eqz p1, :cond_1d

    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    goto :goto_e

    :cond_1d
    const-string v1, " spd_aud"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const/high16 v1, 0x80000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_20

    if-eqz p1, :cond_1f

    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    goto :goto_f

    :cond_1f
    const-string v1, " a2v"

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const/high16 v1, 0x100000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_22

    if-eqz p1, :cond_21

    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    goto :goto_10

    :cond_21
    const-string v1, " paus_VT"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    const/high16 v1, 0x200000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_24

    if-eqz p1, :cond_23

    const-string v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    goto :goto_11

    :cond_23
    const-string v1, " 1p_cnf"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const/high16 v1, 0x400000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_26

    if-eqz p1, :cond_25

    const-string v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    goto :goto_12

    :cond_25
    const-string v1, " rsp_by_con"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const/high16 v1, 0x1000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_28

    if-eqz p1, :cond_27

    const-string v1, " CAPABILITY_CAN_PULL_CALL"

    goto :goto_13

    :cond_27
    const-string v1, " pull"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2a

    if-eqz p1, :cond_29

    const-string v1, " CAPABILITY_SUPPORT_DEFLECT"

    goto :goto_14

    :cond_29
    const-string v1, " sup_def"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2c

    if-eqz p1, :cond_2b

    const-string v1, " CAPABILITY_ADD_PARTICIPANT"

    goto :goto_15

    :cond_2b
    const-string v1, " add_participant"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    const/high16 v2, 0x8000000

    if-ne v1, v2, :cond_2e

    if-eqz p1, :cond_2d

    const-string v1, " CAPABILITY_TRANSFER"

    goto :goto_16

    :cond_2d
    const-string v1, " sup_trans"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    const/high16 v2, 0x10000000

    if-ne v1, v2, :cond_30

    if-eqz p1, :cond_2f

    const-string v1, " CAPABILITY_TRANSFER_CONSULTATIVE"

    goto :goto_17

    :cond_2f
    const-string v1, " sup_cTrans"

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    const/high16 v2, 0x20000000

    if-ne v1, v2, :cond_32

    if-eqz p1, :cond_31

    const-string v1, " CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT"

    goto :goto_18

    :cond_31
    const-string v1, " sup_rtt"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o capabilitiesToStringShort(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final greylist-max-o clearConferenceableList()V
    .locals 4

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static whitelist createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static whitelist createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1

    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final greylist-max-o fireConferenceChanged()V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$queryLocationForEmergency$4(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telecom/Connection$Listener;->onQueryLocation(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRemoteRttRequest$3(Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRemoteRttRequest(Landroid/telecom/Connection;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttInitiationFailure$1(ILandroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/telecom/Connection$Listener;->onRttInitiationFailure(Landroid/telecom/Connection;I)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttInitiationSuccess$0(Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttInitiationSuccess(Landroid/telecom/Connection;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttSessionRemotelyTerminated$2(Landroid/telecom/Connection$Listener;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V

    return-void
.end method

.method public static whitelist propertiesToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o propertiesToStringInternal(IZ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_1

    const-string v1, " PROPERTY_SELF_MANAGED"

    goto :goto_0

    :cond_1
    const-string v1, " self_mng"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    goto :goto_1

    :cond_3
    const-string v1, " ecbm"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_5

    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    goto :goto_2

    :cond_5
    const-string v1, " HD"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    if-eqz p1, :cond_7

    const-string v1, " PROPERTY_WIFI"

    goto :goto_3

    :cond_7
    const-string v1, " wifi"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    if-eqz p1, :cond_9

    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    goto :goto_4

    :cond_9
    const-string v1, " gen_conf"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_c

    if-eqz p1, :cond_b

    const-string v1, " PROPERTY_IS_EXTERNAL_CALL"

    goto :goto_5

    :cond_b
    const-string v1, " xtrnl"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    if-eqz p1, :cond_d

    const-string v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    goto :goto_6

    :cond_d
    const-string v1, " priv"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_10

    if-eqz p1, :cond_f

    const-string v1, " PROPERTY_IS_RTT"

    goto :goto_7

    :cond_f
    const-string v1, " rtt"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_12

    if-eqz p1, :cond_11

    const-string v1, " PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL"

    goto :goto_8

    :cond_11
    const-string v1, " ecall"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_14

    if-eqz p1, :cond_13

    const-string v1, " PROPERTY_REMOTELY_HOSTED"

    goto :goto_9

    :cond_13
    const-string v1, " remote_hst"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    and-int/lit16 v1, p0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_16

    if-eqz p1, :cond_15

    const-string v1, " PROPERTY_IS_ADHOC_CONFERENCE"

    goto :goto_a

    :cond_15
    const-string v1, " adhoc_conf"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_18

    if-eqz p1, :cond_17

    const-string v1, " PROPERTY_IS_DOWNGRADED_CONFERENCE"

    goto :goto_b

    :cond_17
    const-string v1, " dngrd_conf"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o propertiesToStringShort(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o setState(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Connection already DISCONNECTED; cannot transition out of this state."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    if-eq v0, p1, :cond_1

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/telecom/Connection;->mState:I

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/telecom/Connection;

    const-string v2, "Unknown state %d"

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "PULLING_CALL"

    return-object v0

    :pswitch_1
    const-string v0, "DISCONNECTED"

    return-object v0

    :pswitch_2
    const-string v0, "HOLDING"

    return-object v0

    :pswitch_3
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_4
    const-string v0, "DIALING"

    return-object v0

    :pswitch_5
    const-string v0, "RINGING"

    return-object v0

    :pswitch_6
    const-string v0, "NEW"

    return-object v0

    :pswitch_7
    const-string v0, "INITIALIZING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static greylist-max-o toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method final greylist-max-o addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public greylist-max-o checkImmutable()V
    .locals 0

    return-void
.end method

.method public final whitelist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist getAddress()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final whitelist getAddressPresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioModeIsVoip()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final blacklist getCallDirection()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    return v0
.end method

.method public final whitelist getCallerDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getCallerDisplayNamePresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getCallerNumberVerificationStatus()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public final whitelist getConference()Landroid/telecom/Conference;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final whitelist getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getCurrentCallEndpoint()Landroid/telecom/CallEndpoint;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    return-object v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final whitelist getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final greylist-max-o getSupportedAudioRoutes()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final whitelist getVideoState()I
    .locals 1

    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .locals 0

    return-void
.end method

.method public final whitelist isRingbackRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method public final whitelist notifyConferenceMergeFailed()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-o notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist onAbort()V
    .locals 0

    return-void
.end method

.method public whitelist onAddConferenceParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onAnswer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    return-void
.end method

.method public whitelist onAnswer(I)V
    .locals 0

    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist onAvailableCallEndpointsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
    .locals 0

    return-void
.end method

.method public whitelist onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist onDeflect(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public whitelist onDisconnect()V
    .locals 0

    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onHandoverComplete()V
    .locals 0

    return-void
.end method

.method public whitelist onHold()V
    .locals 0

    return-void
.end method

.method public whitelist onMuteStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .locals 0

    return-void
.end method

.method public whitelist onPostDialContinue(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onPullExternalCall()V
    .locals 0

    return-void
.end method

.method public whitelist onReject()V
    .locals 0

    return-void
.end method

.method public whitelist onReject(I)V
    .locals 0

    return-void
.end method

.method public whitelist onReject(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onSeparate()V
    .locals 0

    return-void
.end method

.method public whitelist onShowIncomingCallUi()V
    .locals 0

    return-void
.end method

.method public whitelist onSilence()V
    .locals 0

    return-void
.end method

.method public whitelist onStartRtt(Landroid/telecom/Connection$RttTextStream;)V
    .locals 0

    return-void
.end method

.method public whitelist onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .locals 0

    return-void
.end method

.method public whitelist onStopRtt()V
    .locals 0

    return-void
.end method

.method public whitelist onTrackedByNonUiService(Z)V
    .locals 0

    return-void
.end method

.method public blacklist onTransfer(Landroid/net/Uri;Z)V
    .locals 0

    return-void
.end method

.method public blacklist onTransfer(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public whitelist onUnhold()V
    .locals 0

    return-void
.end method

.method public whitelist onUsingAlternativeUi(Z)V
    .locals 0

    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final whitelist queryLocationForEmergency(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/location/Location;",
            "Landroid/telecom/QueryLocationException;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v8, Landroid/telecom/Connection$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/telecom/Connection$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The timeoutMillis should be min 100, max 5000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There are arguments that must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, p0, v0}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    return-void
.end method

.method public whitelist requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    nop

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v3, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/telecom/Connection$Listener;->onEndpointChanged(Landroid/telecom/Connection;Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final greylist-max-o resetConference()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Conference reset"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    :cond_0
    return-void
.end method

.method public final whitelist resetConnectionTime()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConnectionTimeReset(Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist sendRemoteRttRequest()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final whitelist sendRttInitiationFailure(I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/telecom/Connection$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/Connection;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final whitelist sendRttInitiationSuccess()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final whitelist sendRttSessionRemotelyTerminated()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final whitelist setActive()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .locals 2

    invoke-static {p1}, Landroid/telecom/Log;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setAddress %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist setAudioModeIsVoip(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setAudioModeIsVoip: Ignored request to set a self-managed connection\'s audioModeIsVoip to false. Doing so can cause unwanted behavior."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final whitelist setAudioRoute(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final blacklist setAvailableCallEndpoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setAvailableCallEndpoints"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v0, "setAudioState %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public whitelist setCallDirection(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput p1, p0, Landroid/telecom/Connection;->mCallDirection:I

    return-void
.end method

.method final blacklist setCallEndpoint(Landroid/telecom/CallEndpoint;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v0, "setCallEndpoint %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .locals 6

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget v2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection$Listener;

    iget-object v4, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    iget v5, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    invoke-virtual {v3, p0, v4, v5}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final whitelist setCallerNumberVerificationStatus(I)V
    .locals 0

    iput p1, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    return-void
.end method

.method public final greylist-max-o setConference(Landroid/telecom/Conference;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1

    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public final whitelist setConferenceables(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final greylist-max-o setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    :goto_0
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-void
.end method

.method public final whitelist setDialing()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    const-string v0, "Disconnected with cause %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v0, :cond_4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    :cond_4
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public final whitelist setInitialized()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final whitelist setInitializing()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method final blacklist setMuteState(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setMuteState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onMuteStateChanged(Z)V

    return-void
.end method

.method public final whitelist setNextPostDialChar(C)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist setOnHold()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public whitelist setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V

    :cond_0
    return-void
.end method

.method public final whitelist setPostDialWait(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist setPulling()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist setRinging()V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final greylist-max-o setSupportedAudioRoutes(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x9

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "supported audio routes must include either speaker or earpiece"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist setVideoState(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setVideoState %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final greylist-max-o unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    :goto_0
    return-void
.end method
