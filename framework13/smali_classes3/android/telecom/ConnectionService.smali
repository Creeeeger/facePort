.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# static fields
.field public static final greylist-max-o EXTRA_IS_HANDOVER:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "Telecom-ConnectionService"

.field private static final greylist-max-o MSG_ABORT:I = 0x3

.field private static final greylist-max-o MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final blacklist MSG_ADD_PARTICIPANT:I = 0x27

.field private static final greylist-max-o MSG_ANSWER:I = 0x4

.field private static final greylist-max-o MSG_ANSWER_VIDEO:I = 0x11

.field private static final greylist-max-o MSG_CONFERENCE:I = 0xc

.field private static final greylist-max-o MSG_CONNECTION_SERVICE_FOCUS_GAINED:I = 0x1f

.field private static final greylist-max-o MSG_CONNECTION_SERVICE_FOCUS_LOST:I = 0x1e

.field private static final blacklist MSG_CREATE_CONFERENCE:I = 0x23

.field private static final blacklist MSG_CREATE_CONFERENCE_COMPLETE:I = 0x24

.field private static final blacklist MSG_CREATE_CONFERENCE_FAILED:I = 0x25

.field private static final greylist-max-o MSG_CREATE_CONNECTION:I = 0x2

.field private static final greylist-max-o MSG_CREATE_CONNECTION_COMPLETE:I = 0x1d

.field private static final greylist-max-o MSG_CREATE_CONNECTION_FAILED:I = 0x19

.field private static final greylist-max-o MSG_DEFLECT:I = 0x22

.field private static final greylist-max-o MSG_DISCONNECT:I = 0x6

.field private static final blacklist MSG_EXPLICIT_CALL_TRANSFER:I = 0x28

.field private static final blacklist MSG_EXPLICIT_CALL_TRANSFER_CONSULTATIVE:I = 0x29

.field private static final greylist-max-o MSG_HANDOVER_COMPLETE:I = 0x21

.field private static final greylist-max-o MSG_HANDOVER_FAILED:I = 0x20

.field private static final greylist-max-o MSG_HOLD:I = 0x7

.field private static final greylist-max-o MSG_MERGE_CONFERENCE:I = 0x12

.field private static final greylist-max-o MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final blacklist MSG_ON_CALL_FILTERING_COMPLETED:I = 0x2a

.field private static final greylist-max-o MSG_ON_EXTRAS_CHANGED:I = 0x18

.field private static final greylist-max-o MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final greylist-max-o MSG_ON_START_RTT:I = 0x1a

.field private static final greylist-max-o MSG_ON_STOP_RTT:I = 0x1b

.field private static final blacklist MSG_ON_TRACKED_BY_NON_UI_SERVICE:I = 0x2c

.field private static final blacklist MSG_ON_USING_ALTERNATIVE_UI:I = 0x2b

.field private static final greylist-max-o MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final greylist-max-o MSG_PULL_EXTERNAL_CALL:I = 0x16

.field private static final greylist-max-o MSG_REJECT:I = 0x5

.field private static final greylist-max-o MSG_REJECT_WITH_MESSAGE:I = 0x14

.field private static final blacklist MSG_REJECT_WITH_REASON:I = 0x26

.field private static final greylist-max-o MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final greylist-max-o MSG_RTT_UPGRADE_RESPONSE:I = 0x1c

.field private static final greylist-max-o MSG_SEND_CALL_EVENT:I = 0x17

.field private static final greylist-max-o MSG_SILENCE:I = 0x15

.field private static final greylist-max-o MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final greylist-max-o MSG_STOP_DTMF_TONE:I = 0xb

.field private static final greylist-max-o MSG_SWAP_CONFERENCE:I = 0x13

.field private static final greylist-max-o MSG_UNHOLD:I = 0x8

.field private static final greylist-max-o PII_DEBUG:Z

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static final greylist-max-o SESSION_ABORT:Ljava/lang/String; = "CS.ab"

.field private static final greylist-max-o SESSION_ADD_CS_ADAPTER:Ljava/lang/String; = "CS.aCSA"

.field private static final blacklist SESSION_ADD_PARTICIPANT:Ljava/lang/String; = "CS.aP"

.field private static final greylist-max-o SESSION_ANSWER:Ljava/lang/String; = "CS.an"

.field private static final greylist-max-o SESSION_ANSWER_VIDEO:Ljava/lang/String; = "CS.anV"

.field private static final greylist-max-o SESSION_CALL_AUDIO_SC:Ljava/lang/String; = "CS.cASC"

.field private static final blacklist SESSION_CALL_FILTERING_COMPLETED:Ljava/lang/String; = "CS.oCFC"

.field private static final greylist-max-o SESSION_CONFERENCE:Ljava/lang/String; = "CS.c"

.field private static final greylist-max-o SESSION_CONNECTION_SERVICE_FOCUS_GAINED:Ljava/lang/String; = "CS.cSFG"

.field private static final greylist-max-o SESSION_CONNECTION_SERVICE_FOCUS_LOST:Ljava/lang/String; = "CS.cSFL"

.field private static final blacklist SESSION_CONSULTATIVE_TRANSFER:Ljava/lang/String; = "CS.cTrans"

.field private static final blacklist SESSION_CREATE_CONF:Ljava/lang/String; = "CS.crConf"

.field private static final blacklist SESSION_CREATE_CONF_COMPLETE:Ljava/lang/String; = "CS.crConfC"

.field private static final blacklist SESSION_CREATE_CONF_FAILED:Ljava/lang/String; = "CS.crConfF"

.field private static final greylist-max-o SESSION_CREATE_CONN:Ljava/lang/String; = "CS.crCo"

.field private static final greylist-max-o SESSION_CREATE_CONN_COMPLETE:Ljava/lang/String; = "CS.crCoC"

.field private static final greylist-max-o SESSION_CREATE_CONN_FAILED:Ljava/lang/String; = "CS.crCoF"

.field private static final greylist-max-o SESSION_DEFLECT:Ljava/lang/String; = "CS.def"

.field private static final greylist-max-o SESSION_DISCONNECT:Ljava/lang/String; = "CS.d"

.field private static final greylist-max-o SESSION_EXTRAS_CHANGED:Ljava/lang/String; = "CS.oEC"

.field private static final greylist-max-o SESSION_HANDLER:Ljava/lang/String; = "H."

.field private static final greylist-max-o SESSION_HANDOVER_COMPLETE:Ljava/lang/String; = "CS.hC"

.field private static final greylist-max-o SESSION_HANDOVER_FAILED:Ljava/lang/String; = "CS.haF"

.field private static final greylist-max-o SESSION_HOLD:Ljava/lang/String; = "CS.h"

.field private static final greylist-max-o SESSION_MERGE_CONFERENCE:Ljava/lang/String; = "CS.mC"

.field private static final greylist-max-o SESSION_PLAY_DTMF:Ljava/lang/String; = "CS.pDT"

.field private static final greylist-max-o SESSION_POST_DIAL_CONT:Ljava/lang/String; = "CS.oPDC"

.field private static final greylist-max-o SESSION_PULL_EXTERNAL_CALL:Ljava/lang/String; = "CS.pEC"

.field private static final greylist-max-o SESSION_REJECT:Ljava/lang/String; = "CS.r"

.field private static final greylist-max-o SESSION_REJECT_MESSAGE:Ljava/lang/String; = "CS.rWM"

.field private static final greylist-max-o SESSION_REMOVE_CS_ADAPTER:Ljava/lang/String; = "CS.rCSA"

.field private static final greylist-max-o SESSION_RTT_UPGRADE_RESPONSE:Ljava/lang/String; = "CS.rTRUR"

.field private static final greylist-max-o SESSION_SEND_CALL_EVENT:Ljava/lang/String; = "CS.sCE"

.field private static final greylist-max-o SESSION_SILENCE:Ljava/lang/String; = "CS.s"

.field private static final greylist-max-o SESSION_SPLIT_CONFERENCE:Ljava/lang/String; = "CS.sFC"

.field private static final greylist-max-o SESSION_START_RTT:Ljava/lang/String; = "CS.+RTT"

.field private static final greylist-max-o SESSION_STOP_DTMF:Ljava/lang/String; = "CS.sDT"

.field private static final greylist-max-o SESSION_STOP_RTT:Ljava/lang/String; = "CS.-RTT"

.field private static final greylist-max-o SESSION_SWAP_CONFERENCE:Ljava/lang/String; = "CS.sC"

.field private static final blacklist SESSION_TRACKED_BY_NON_UI_SERVICE:Ljava/lang/String; = "CS.tBNUS"

.field private static final blacklist SESSION_TRANSFER:Ljava/lang/String; = "CS.trans"

.field private static final greylist-max-o SESSION_UNHOLD:Ljava/lang/String; = "CS.u"

.field private static final greylist-max-o SESSION_UPDATE_RTT_PIPES:Ljava/lang/String; = "CS.uRTT"

.field private static final blacklist SESSION_USING_ALTERNATIVE_UI:Ljava/lang/String; = "CS.uAU"

.field private static greylist-max-o sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final greylist-max-o mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private greylist-max-o mAreAccountsInitialized:Z

.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field private final greylist-max-o mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mId:I

.field private final greylist-max-o mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIdSyncRoot:Ljava/lang/Object;

.field private final greylist-max-o mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private greylist-max-o sNullConference:Landroid/telecom/Conference;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdByConnection(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteConnectionManager(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAreAccountsInitialized(Landroid/telecom/ConnectionService;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mabort(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddConferenceParticipants(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manswer(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manswerVideo(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconference(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconsultativeTransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConferenceFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/ConnectionService;->createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnection(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnectionFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/ConnectionService;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnectionIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeflect(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->deflect(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdisconnect(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleExtrasChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRttUpgradeResponse(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleRttUpgradeResponse(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandoverFailed(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmergeConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCreateConferenceComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyCreateConferenceComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCreateConnectionComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyCreateConnectionComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyHandoverComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyHandoverComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAccountsInitialized(Landroid/telecom/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAdapterAttached(Landroid/telecom/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCallAudioStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCallFilteringCompleted(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPostDialContinue(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTrackedByNonUiService(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onTrackedByNonUiService(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUsingAlternativeUi(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onUsingAlternativeUi(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplayDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpullExternalCall(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->pullExternalCall(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveConference(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendCallEvent(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msilence(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->silence(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplitFromConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->startRtt(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopRtt(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mswapConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->transfer(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 127
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 221
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 223
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 224
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 225
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 228
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 232
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    .line 233
    iput v0, p0, Landroid/telecom/ConnectionService;->mId:I

    .line 235
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 867
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 1543
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 1701
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    return-void
.end method

.method private greylist-max-o abort(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2225
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "abort %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2226
    const-string v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 2227
    return-void
.end method

.method private greylist-max-o addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 5
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3354
    const/4 v0, 0x0

    .line 3355
    .local v0, "originalId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3356
    const-string v4, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3357
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3358
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3359
    invoke-virtual {p1}, Landroid/telecom/Conference;->getTelecomCallId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    .line 3358
    const-string v4, "addConferenceInternal: conf %s reusing original id %s"

    invoke-static {p0, v4, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3362
    :cond_0
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3363
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "Re-adding an existing conference: %s."

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3364
    :cond_1
    if-eqz p1, :cond_3

    .line 3368
    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 3370
    .local v1, "id":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addConferenceInternal - id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", conference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", conferenceListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Telecom-ConnectionService"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3374
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3375
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v2}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 3376
    return-object v1

    .line 3379
    .end local v1    # "id":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2439
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "addConferenceParticipants(%s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2440
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "addConferenceParticipants"

    if-eqz v0, :cond_0

    .line 2441
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2442
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAddConferenceParticipants(Ljava/util/List;)V

    goto :goto_0

    .line 2444
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 2445
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onAddConferenceParticipants(Ljava/util/List;)V

    .line 2447
    :goto_0
    return-void
.end method

.method private greylist-max-o addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "connection"    # Landroid/telecom/Connection;

    .line 3325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConnection - callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/telecom/ConnectionService;->connectionToString(Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-ConnectionService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    invoke-virtual {p3, p2}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 3329
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3331
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p3, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 3332
    invoke-virtual {p3, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 3333
    invoke-virtual {p3, p1}, Landroid/telecom/Connection;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V

    .line 3334
    invoke-virtual {p0, p3}, Landroid/telecom/ConnectionService;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 3335
    return-void
.end method

.method private greylist-max-o addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 4
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 3305
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3306
    const-string v1, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3307
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3308
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3309
    invoke-virtual {p2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3308
    const-string v2, "addExistingConnectionInternal - conn %s reusing original id %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3310
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 3313
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0

    .line 3317
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNextCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3319
    .restart local v0    # "id":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroid/telecom/ConnectionService;->addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 3320
    return-object v0
.end method

.method private greylist-max-o answer(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2239
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "answer %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2240
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "answer"

    if-eqz v0, :cond_0

    .line 2241
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    goto :goto_0

    .line 2243
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onAnswer()V

    .line 2245
    :goto_0
    return-void
.end method

.method private greylist-max-o answerVideo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 2230
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "answerVideo %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2231
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "answer"

    if-eqz v0, :cond_0

    .line 2232
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    goto :goto_0

    .line 2234
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onAnswer(I)V

    .line 2236
    :goto_0
    return-void
.end method

.method private greylist-max-o conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .line 2361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "conference %s, %s"

    invoke-static {p0, v3, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2364
    const-string v0, "conference"

    invoke-direct {p0, p2, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v3

    .line 2365
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    .line 2366
    .local v4, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v5

    if-ne v3, v5, :cond_0

    .line 2367
    invoke-direct {p0, p2, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v4

    .line 2368
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 2369
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v1, "Connection2 or Conference2 missing in conference request %s."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2371
    return-void

    .line 2376
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2377
    .local v0, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v5

    if-ne v0, v5, :cond_3

    .line 2378
    const-string v5, "addConnection"

    invoke-direct {p0, p1, v5}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v5

    .line 2379
    .local v5, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 2380
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "Connection1 or Conference1 missing in conference request %s."

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2385
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-eq v3, v2, :cond_2

    .line 2387
    invoke-virtual {v5, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    .line 2395
    .end local v5    # "conference1":Landroid/telecom/Conference;
    :goto_0
    goto :goto_1

    .line 2390
    .restart local v5    # "conference1":Landroid/telecom/Conference;
    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "There can only be one conference and an attempt was made to merge two conferences."

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2392
    return-void

    .line 2397
    .end local v5    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v1

    if-eq v4, v1, :cond_4

    .line 2399
    invoke-virtual {v4, v0}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_1

    .line 2402
    :cond_4
    invoke-virtual {p0, v0, v3}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    .line 2405
    :goto_1
    return-void
.end method

.method private static blacklist connectionToString(Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 2
    .param p0, "conn"    # Landroid/telecom/Connection;

    .line 3510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3511
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 3512
    const-string v1, "[null conn]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3514
    :cond_0
    const-string v1, "[telecomCallId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3515
    invoke-virtual {p0}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3517
    invoke-virtual {p0}, Landroid/telecom/Connection;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3518
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .line 2277
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "consultativeTransfer %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2278
    const-string v0, "consultativeTransfer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2279
    .local v0, "connection1":Landroid/telecom/Connection;
    const-string v1, " consultativeTransfer"

    invoke-direct {p0, p2, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 2280
    .local v1, "connection2":Landroid/telecom/Connection;
    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->onTransfer(Landroid/telecom/Connection;)V

    .line 2281
    return-void
.end method

.method private blacklist createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 10
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .line 1963
    const/4 v0, 0x0

    .line 1964
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;

    move-result-object v1

    goto :goto_0

    .line 1965
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1967
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "createConference, conference: %s"

    invoke-static {p0, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1968
    if-nez v0, :cond_1

    .line 1969
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "createConference, implementation returned null conference."

    invoke-static {p0, v4, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    new-instance v2, Landroid/telecom/DisconnectCause;

    const-string v4, "IMPL_RETURNED_NULL_CONFERENCE"

    invoke-direct {v2, v1, v4}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 1972
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 1970
    invoke-static {v2, v4}, Landroid/telecom/Conference;->createFailedConference(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1975
    :cond_1
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1976
    .local v2, "extras":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1977
    .local v4, "newExtras":Landroid/os/Bundle;
    const-string v5, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    if-eqz v2, :cond_2

    .line 1982
    const-string v5, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1983
    nop

    .line 1985
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1983
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    nop

    .line 1988
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 1987
    const-string v6, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1991
    :cond_2
    invoke-virtual {v0, v4}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 1993
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v5, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, v5}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1997
    new-instance v5, Landroid/telecom/ParcelableConference$Builder;

    .line 1998
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telecom/Conference;->getState()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/telecom/ParcelableConference$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;I)V

    .line 1999
    invoke-virtual {v0}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telecom/ParcelableConference$Builder;->setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2000
    invoke-virtual {v0}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telecom/ParcelableConference$Builder;->setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2001
    invoke-virtual {v0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    if-nez v6, :cond_3

    .line 2002
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    .line 2003
    :goto_1
    invoke-virtual {v0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v7

    .line 2001
    invoke-virtual {v5, v6, v7}, Landroid/telecom/ParcelableConference$Builder;->setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2004
    invoke-virtual {v0}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v6

    .line 2005
    invoke-virtual {v0}, Landroid/telecom/Conference;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v8

    .line 2004
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telecom/ParcelableConference$Builder;->setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2006
    invoke-virtual {v0}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telecom/ParcelableConference$Builder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2007
    invoke-virtual {v0}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telecom/ParcelableConference$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2008
    invoke-virtual {v0}, Landroid/telecom/Conference;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telecom/Conference;->getAddressPresentation()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/telecom/ParcelableConference$Builder;->setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2009
    invoke-virtual {v0}, Landroid/telecom/Conference;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 2010
    invoke-virtual {v0}, Landroid/telecom/Conference;->getCallerDisplayNamePresentation()I

    move-result v7

    .line 2009
    invoke-virtual {v5, v6, v7}, Landroid/telecom/ParcelableConference$Builder;->setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2011
    invoke-virtual {v0}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telecom/ParcelableConference$Builder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2012
    invoke-virtual {v0}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telecom/ParcelableConference$Builder;->setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v5

    .line 2013
    invoke-virtual {v5}, Landroid/telecom/ParcelableConference$Builder;->build()Landroid/telecom/ParcelableConference;

    move-result-object v5

    .line 2014
    .local v5, "parcelableConference":Landroid/telecom/ParcelableConference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->getState()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    .line 2015
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 2016
    iget-object v6, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 2017
    iget-object v6, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v7

    invoke-virtual {v6, p2, v7}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 2018
    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->onConferenceAdded(Landroid/telecom/Conference;)V

    .line 2021
    :cond_4
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string v3, "createConference, calling handleCreateConferenceSuccessful %s"

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2022
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, p2, p3, v5}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V

    .line 2026
    return-void
.end method

.method private blacklist createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .locals 2
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z

    .line 2174
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "createConferenceFailed %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2175
    if-eqz p4, :cond_0

    .line 2176
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    goto :goto_0

    .line 2178
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    .line 2180
    :goto_0
    return-void
.end method

.method private greylist-max-o createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 42
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .line 2039
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 2040
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "android.telecom.extra.IS_HANDOVER"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 2041
    .local v5, "isLegacyHandover":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "android.telecom.extra.IS_HANDOVER_CONNECTION"

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    .line 2043
    .local v8, "isHandover":Z
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "android.telecom.extra.ADD_SELF_MANAGED_CALLS_TO_INCALLSERVICE"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v7

    .line 2045
    .local v9, "addSelfManaged":Z
    :goto_2
    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v7

    aput-object v3, v10, v6

    const/4 v11, 0x2

    aput-object v4, v10, v11

    .line 2047
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v10, v13

    .line 2048
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v14, 0x4

    aput-object v12, v10, v14

    const/4 v12, 0x5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v10, v12

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v15, 0x6

    aput-object v12, v10, v15

    const/4 v12, 0x7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v10, v12

    .line 2045
    const-string v12, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b, isLegacyHandover: %b, isHandover: %b,  addSelfManaged: %b"

    invoke-static {v1, v12, v10}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2050
    const/4 v10, 0x0

    .line 2051
    .local v10, "connection":Landroid/telecom/Connection;
    if-eqz v8, :cond_5

    .line 2052
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 2053
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "android.telecom.extra.HANDOVER_FROM_PHONE_ACCOUNT"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/telecom/PhoneAccountHandle;

    goto :goto_3

    .line 2054
    :cond_3
    const/4 v12, 0x0

    :goto_3
    nop

    .line 2055
    .local v12, "fromPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez p4, :cond_4

    .line 2056
    invoke-virtual {v1, v12, v4}, Landroid/telecom/ConnectionService;->onCreateOutgoingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v10

    goto :goto_4

    .line 2058
    :cond_4
    invoke-virtual {v1, v12, v4}, Landroid/telecom/ConnectionService;->onCreateIncomingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v10

    .line 2060
    .end local v12    # "fromPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_4
    goto :goto_6

    .line 2061
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v12

    goto :goto_5

    .line 2062
    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v12

    goto :goto_5

    .line 2063
    :cond_7
    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v12

    :goto_5
    move-object v10, v12

    .line 2065
    :goto_6
    new-array v12, v6, [Ljava/lang/Object;

    aput-object v10, v12, v7

    const-string v13, "createConnection, connection: %s"

    invoke-static {v1, v13, v12}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createConnection - callId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", connection: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Landroid/telecom/ConnectionService;->connectionToString(Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Telecom-ConnectionService"

    invoke-static {v13, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    if-nez v10, :cond_8

    .line 2070
    new-array v0, v7, [Ljava/lang/Object;

    const-string v12, "createConnection, implementation returned null connection."

    invoke-static {v1, v12, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2071
    new-instance v0, Landroid/telecom/DisconnectCause;

    const-string v12, "IMPL_RETURNED_NULL_CONNECTION"

    invoke-direct {v0, v6, v12}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v10

    goto :goto_7

    .line 2075
    :cond_8
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 2076
    .local v12, "extras":Landroid/os/Bundle;
    if-eqz v12, :cond_9

    .line 2080
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2082
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2083
    .local v13, "newExtras":Landroid/os/Bundle;
    nop

    .line 2085
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2083
    invoke-virtual {v13, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const-string v0, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    .line 2089
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    .line 2088
    invoke-virtual {v13, v0, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2090
    invoke-virtual {v10, v13}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2096
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v13    # "newExtras":Landroid/os/Bundle;
    :cond_9
    goto :goto_7

    .line 2093
    :catch_0
    move-exception v0

    .line 2099
    :goto_7
    nop

    .line 2100
    invoke-virtual {v10}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v0

    const/16 v11, 0x80

    and-int/2addr v0, v11

    if-ne v0, v11, :cond_a

    move v0, v6

    goto :goto_8

    :cond_a
    move v0, v7

    .line 2104
    .local v0, "isSelfManaged":Z
    :goto_8
    if-eqz v0, :cond_b

    .line 2105
    invoke-virtual {v10, v6}, Landroid/telecom/Connection;->setAudioModeIsVoip(Z)V

    .line 2107
    :cond_b
    invoke-virtual {v10, v3}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v10}, Landroid/telecom/Connection;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    if-nez v11, :cond_c

    .line 2109
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    goto :goto_9

    :cond_c
    invoke-virtual {v10}, Landroid/telecom/Connection;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    .line 2110
    .local v11, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_9
    invoke-virtual {v10}, Landroid/telecom/Connection;->getState()I

    move-result v12

    if-eq v12, v15, :cond_d

    .line 2111
    invoke-direct {v1, v11, v3, v10}, Landroid/telecom/ConnectionService;->addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 2114
    :cond_d
    invoke-virtual {v10}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v12

    .line 2115
    .local v12, "address":Landroid/net/Uri;
    if-nez v12, :cond_e

    const-string/jumbo v13, "null"

    goto :goto_a

    :cond_e
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 2116
    .local v13, "number":Ljava/lang/String;
    :goto_a
    new-array v14, v14, [Ljava/lang/Object;

    .line 2117
    invoke-static {v13}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    .line 2118
    invoke-virtual {v10}, Landroid/telecom/Connection;->getState()I

    move-result v15

    invoke-static {v15}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    .line 2119
    invoke-virtual {v10}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v15

    invoke-static {v15}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x2

    aput-object v15, v14, v18

    .line 2120
    invoke-virtual {v10}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v15

    invoke-static {v15}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x3

    aput-object v15, v14, v17

    .line 2116
    const-string v15, "createConnection, number: %s, state: %s, capabilities: %s, properties: %s"

    invoke-static {v1, v15, v14}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2122
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    const-string v7, "createConnection, calling handleCreateConnectionSuccessful %s"

    invoke-static {v1, v7, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2123
    iget-object v6, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v7, Landroid/telecom/ParcelableConnection;

    .line 2128
    invoke-virtual {v10}, Landroid/telecom/Connection;->getState()I

    move-result v21

    .line 2129
    invoke-virtual {v10}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v22

    .line 2130
    invoke-virtual {v10}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v23

    .line 2131
    invoke-virtual {v10}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v24

    .line 2132
    invoke-virtual {v10}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v25

    .line 2133
    invoke-virtual {v10}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v26

    .line 2134
    invoke-virtual {v10}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v27

    .line 2135
    invoke-virtual {v10}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v28

    .line 2136
    invoke-virtual {v10}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v14

    if-nez v14, :cond_f

    .line 2137
    const/16 v29, 0x0

    goto :goto_b

    :cond_f
    invoke-virtual {v10}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v14

    move-object/from16 v29, v14

    .line 2138
    :goto_b
    invoke-virtual {v10}, Landroid/telecom/Connection;->getVideoState()I

    move-result v30

    .line 2139
    invoke-virtual {v10}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v31

    .line 2140
    invoke-virtual {v10}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v32

    .line 2141
    invoke-virtual {v10}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v33

    .line 2142
    invoke-virtual {v10}, Landroid/telecom/Connection;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v35

    .line 2143
    invoke-virtual {v10}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v37

    .line 2144
    invoke-virtual {v10}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v38

    .line 2145
    invoke-virtual {v10}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v14

    invoke-direct {v1, v14}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v39

    .line 2146
    invoke-virtual {v10}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v40

    .line 2147
    invoke-virtual {v10}, Landroid/telecom/Connection;->getCallerNumberVerificationStatus()I

    move-result v41

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    invoke-direct/range {v19 .. v41}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;I)V

    .line 2123
    invoke-virtual {v6, v3, v4, v7}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 2149
    if-eqz p4, :cond_10

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->shouldShowIncomingCallUi()Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v0, :cond_10

    .line 2151
    invoke-virtual {v10}, Landroid/telecom/Connection;->onShowIncomingCallUi()V

    .line 2153
    :cond_10
    if-eqz p5, :cond_11

    .line 2154
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ConnectionService;->triggerConferenceRecalculate()V

    .line 2156
    :cond_11
    return-void
.end method

.method private greylist-max-o createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .locals 2
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z

    .line 2162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "createConnectionFailed %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2163
    if-eqz p4, :cond_0

    .line 2164
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    goto :goto_0

    .line 2166
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    .line 2168
    :goto_0
    return-void
.end method

.method private greylist-max-o createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3422
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3423
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 3424
    .local v2, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3425
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3427
    .end local v2    # "c":Landroid/telecom/Connection;
    :cond_0
    goto :goto_0

    .line 3428
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3429
    return-object v0
.end method

.method private greylist-max-o createIdList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3440
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3441
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conferenceable;

    .line 3443
    .local v2, "c":Landroid/telecom/Conferenceable;
    instance-of v3, v2, Landroid/telecom/Connection;

    if-eqz v3, :cond_0

    .line 3444
    move-object v3, v2

    check-cast v3, Landroid/telecom/Connection;

    .line 3445
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3446
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3448
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_0
    instance-of v3, v2, Landroid/telecom/Conference;

    if-eqz v3, :cond_1

    .line 3449
    move-object v3, v2

    check-cast v3, Landroid/telecom/Conference;

    .line 3450
    .local v3, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3451
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3448
    .end local v3    # "conference":Landroid/telecom/Conference;
    :cond_1
    :goto_1
    nop

    .line 3454
    .end local v2    # "c":Landroid/telecom/Conferenceable;
    :cond_2
    :goto_2
    goto :goto_0

    .line 3455
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3456
    return-object v0
.end method

.method private greylist-max-o deflect(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;

    .line 2248
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "deflect %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2249
    const-string v0, "deflect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onDeflect(Landroid/net/Uri;)V

    .line 2250
    return-void
.end method

.method private greylist-max-o disconnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2289
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "disconnect %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2290
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "disconnect"

    if-eqz v0, :cond_0

    .line 2291
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_0

    .line 2293
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    .line 2295
    :goto_0
    return-void
.end method

.method private greylist-max-o endAllConnections()V
    .locals 3

    .line 3468
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 3470
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3471
    invoke-virtual {v1}, Landroid/telecom/Connection;->onDisconnect()V

    .line 3473
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_0
    goto :goto_0

    .line 3474
    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference;

    .line 3475
    .local v1, "conference":Landroid/telecom/Conference;
    invoke-virtual {v1}, Landroid/telecom/Conference;->onDisconnect()V

    .line 3476
    .end local v1    # "conference":Landroid/telecom/Conference;
    goto :goto_1

    .line 3477
    :cond_2
    return-void
.end method

.method private greylist-max-o findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .locals 2
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 3414
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3415
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    return-object v0

    .line 3417
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "%s - Cannot find conference %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3418
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 3399
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3400
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 3402
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "%s - Cannot find Connection %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3403
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getNextCallId()I
    .locals 2

    .line 3485
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 3486
    :try_start_0
    iget v1, p0, Landroid/telecom/ConnectionService;->mId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/telecom/ConnectionService;->mId:I

    monitor-exit v0

    return v1

    .line 3487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o getNullConference()Landroid/telecom/Conference;
    .locals 2

    .line 3460
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_0

    .line 3461
    new-instance v0, Landroid/telecom/ConnectionService$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 3463
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized greylist-max-o getNullConnection()Landroid/telecom/Connection;
    .locals 2

    const-class v0, Landroid/telecom/ConnectionService;

    monitor-enter v0

    .line 3407
    :try_start_0
    sget-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v1, :cond_0

    .line 3408
    new-instance v1, Landroid/telecom/ConnectionService$6;

    invoke-direct {v1}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 3410
    :cond_0
    sget-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3406
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private greylist-max-o handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2516
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "handleExtrasChanged(%s, %s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2517
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "handleExtrasChanged"

    if-eqz v0, :cond_0

    .line 2518
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->handleExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2519
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2520
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->handleExtrasChanged(Landroid/os/Bundle;)V

    .line 2522
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o handleRttUpgradeResponse(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 2543
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-string/jumbo v2, "handleRttUpgradeResponse(%s, %s)"

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2544
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2545
    const-string/jumbo v0, "handleRttUpgradeResponse"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2546
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_1

    .line 2547
    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2548
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "handleRttUpgradeResponse called on a conference."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2550
    :cond_2
    :goto_1
    return-void
.end method

.method private greylist-max-o handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "reason"    # I

    .line 2185
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "handoverFailed %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2186
    invoke-virtual {p0, p2, p3}, Landroid/telecom/ConnectionService;->onHandoverFailed(Landroid/telecom/ConnectionRequest;I)V

    .line 2187
    return-void
.end method

.method private greylist-max-o hold(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2298
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "hold %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2299
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "hold"

    if-eqz v0, :cond_0

    .line 2300
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    goto :goto_0

    .line 2302
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    .line 2304
    :goto_0
    return-void
.end method

.method private greylist-max-o mergeConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2423
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "mergeConference(%s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2424
    const-string/jumbo v0, "mergeConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 2425
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 2426
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 2428
    :cond_0
    return-void
.end method

.method private blacklist notifyCreateConferenceComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 2212
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v2, "notifyCreateConferenceComplete %s"

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2213
    if-nez p1, :cond_0

    .line 2216
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "notifyCreateConferenceComplete: callId is null."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2217
    return-void

    .line 2219
    :cond_0
    const-string/jumbo v0, "notifyCreateConferenceComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->onCreateConferenceComplete(Landroid/telecom/Conference;)V

    .line 2221
    return-void
.end method

.method private greylist-max-o notifyCreateConnectionComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 2195
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v2, "notifyCreateConnectionComplete %s"

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2196
    if-nez p1, :cond_0

    .line 2199
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "notifyCreateConnectionComplete: callId is null."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    return-void

    .line 2202
    :cond_0
    const-string/jumbo v0, "notifyCreateConnectionComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->onCreateConnectionComplete(Landroid/telecom/Connection;)V

    .line 2204
    return-void
.end method

.method private greylist-max-o notifyHandoverComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2496
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "notifyHandoverComplete(%s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2497
    const-string/jumbo v0, "notifyHandoverComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2498
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 2499
    invoke-virtual {v0}, Landroid/telecom/Connection;->onHandoverComplete()V

    .line 2501
    :cond_0
    return-void
.end method

.method private greylist-max-o onAccountsInitialized()V
    .locals 2

    .line 3288
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 3289
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3290
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3291
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 3292
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3293
    return-void
.end method

.method private greylist-max-o onAdapterAttached()V
    .locals 3

    .line 2558
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_0

    .line 2560
    return-void

    .line 2563
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/ConnectionService;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2565
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v2, Landroid/telecom/ConnectionService$5;

    invoke-direct {v2, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v1, v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;)V

    .line 2594
    return-void
.end method

.method private greylist-max-o onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 2316
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "onAudioStateChanged %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2317
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onCallAudioStateChanged"

    if-eqz v0, :cond_0

    .line 2318
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_0

    .line 2321
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 2324
    :goto_0
    return-void
.end method

.method private blacklist onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callFilteringCompletionInfo"    # Landroid/telecom/Connection$CallFilteringCompletionInfo;

    .line 2483
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "onCallFilteringCompleted(%s, %s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2484
    const-string/jumbo v0, "onCallFilteringCompleted"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2485
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 2486
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V

    .line 2488
    :cond_0
    return-void
.end method

.method private greylist-max-o onPostDialContinue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .line 2553
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "onPostDialContinue(%s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2554
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 2555
    return-void
.end method

.method private blacklist onTrackedByNonUiService(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isTracked"    # Z

    .line 2335
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "onTrackedByNonUiService %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2336
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2337
    const-string/jumbo v0, "onTrackedByNonUiService"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2338
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onTrackedByNonUiService(Z)V

    .line 2340
    :cond_0
    return-void
.end method

.method private blacklist onUsingAlternativeUi(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUsingAlternativeUi"    # Z

    .line 2327
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "onUsingAlternativeUi %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2328
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2329
    const-string/jumbo v0, "onUsingAlternativeUi"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2330
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onUsingAlternativeUi(Z)V

    .line 2332
    :cond_0
    return-void
.end method

.method private greylist-max-o playDtmfTone(Ljava/lang/String;C)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .line 2343
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "playDtmfTone %s %c"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2344
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "playDtmfTone"

    if-eqz v0, :cond_0

    .line 2345
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    goto :goto_0

    .line 2347
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    .line 2349
    :goto_0
    return-void
.end method

.method private greylist-max-o pullExternalCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2457
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "pullExternalCall(%s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2458
    const-string/jumbo v0, "pullExternalCall"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2459
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 2460
    invoke-virtual {v0}, Landroid/telecom/Connection;->onPullExternalCall()V

    .line 2462
    :cond_0
    return-void
.end method

.method private greylist-max-o reject(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2253
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "reject %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2254
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "reject"

    if-eqz v0, :cond_0

    .line 2255
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    goto :goto_0

    .line 2257
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onReject()V

    .line 2259
    :goto_0
    return-void
.end method

.method private blacklist reject(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectReason"    # I

    .line 2267
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "reject %s with reason %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2268
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onReject(I)V

    .line 2269
    return-void
.end method

.method private greylist-max-o reject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Ljava/lang/String;

    .line 2262
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "reject %s with message"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2263
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onReject(Ljava/lang/String;)V

    .line 2264
    return-void
.end method

.method private greylist-max-o removeConference(Landroid/telecom/Conference;)V
    .locals 3
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3383
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3384
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 3386
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3388
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeConference - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Telecom-ConnectionService"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3391
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3392
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 3394
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceRemoved(Landroid/telecom/Conference;)V

    .line 3396
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private greylist-max-o sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2474
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "sendCallEvent(%s, %s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2475
    const-string/jumbo v0, "sendCallEvent"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2476
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 2477
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Connection;->onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2479
    :cond_0
    return-void
.end method

.method private greylist-max-o silence(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2284
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "silence %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2285
    const-string/jumbo v0, "silence"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onSilence()V

    .line 2286
    return-void
.end method

.method private greylist-max-o splitFromConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 2408
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v3, "splitFromConference(%s)"

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2410
    const-string/jumbo v1, "splitFromConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 2411
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 2412
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "Connection missing in conference request %s."

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2413
    return-void

    .line 2416
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    .line 2417
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_1

    .line 2418
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    .line 2420
    :cond_1
    return-void
.end method

.method private greylist-max-o startRtt(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 2525
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v2, "startRtt(%s)"

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2526
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2527
    const-string/jumbo v0, "startRtt"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onStartRtt(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_0

    .line 2528
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2529
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "startRtt called on a conference."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2531
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o stopDtmfTone(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2352
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "stopDtmfTone %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2353
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "stopDtmfTone"

    if-eqz v0, :cond_0

    .line 2354
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    goto :goto_0

    .line 2356
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    .line 2358
    :goto_0
    return-void
.end method

.method private greylist-max-o stopRtt(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 2534
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v2, "stopRtt(%s)"

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2535
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2536
    const-string/jumbo v0, "stopRtt"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopRtt()V

    goto :goto_0

    .line 2537
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2538
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "stopRtt called on a conference."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2540
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o swapConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2431
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "swapConference(%s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2432
    const-string/jumbo v0, "swapConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 2433
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 2434
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    .line 2436
    :cond_0
    return-void
.end method

.method private blacklist transfer(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "number"    # Landroid/net/Uri;
    .param p3, "isConfirmationRequired"    # Z

    .line 2272
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "transfer %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2273
    const-string/jumbo v0, "transfer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/Connection;->onTransfer(Landroid/net/Uri;Z)V

    .line 2274
    return-void
.end method

.method private greylist-max-o unhold(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2307
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "unhold %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2308
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "unhold"

    if-eqz v0, :cond_0

    .line 2309
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    goto :goto_0

    .line 2311
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    .line 2313
    :goto_0
    return-void
.end method


# virtual methods
.method public final whitelist addConference(Landroid/telecom/Conference;)V
    .locals 7
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 2695
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "addConference: conference=%s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2697
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v0

    .line 2698
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 2699
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2700
    .local v1, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 2701
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2702
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2704
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_0
    goto :goto_0

    .line 2705
    :cond_1
    invoke-virtual {p1, v0}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 2706
    new-instance v2, Landroid/telecom/ParcelableConference$Builder;

    .line 2707
    invoke-virtual {p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Conference;->getState()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;I)V

    .line 2708
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2709
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2710
    invoke-virtual {v2, v1}, Landroid/telecom/ParcelableConference$Builder;->setConnectionIds(Ljava/util/List;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2711
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2712
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v3

    .line 2713
    :goto_1
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v4

    .line 2711
    invoke-virtual {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2714
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v3

    .line 2715
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v5

    .line 2714
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/telecom/ParcelableConference$Builder;->setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2716
    invoke-virtual {p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2717
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2718
    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddressPresentation()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2719
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 2720
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayNamePresentation()I

    move-result v4

    .line 2719
    invoke-virtual {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;->setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2721
    invoke-virtual {p1}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2722
    invoke-virtual {p1}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2723
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setCallDirection(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 2724
    invoke-virtual {v2}, Landroid/telecom/ParcelableConference$Builder;->build()Landroid/telecom/ParcelableConference;

    move-result-object v2

    .line 2726
    .local v2, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 2727
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 2728
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 2731
    invoke-virtual {p1}, Landroid/telecom/Conference;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2732
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->isMultiparty()Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;Z)V

    .line 2736
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Connection;

    .line 2737
    .local v4, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2738
    .local v5, "connectionId":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 2739
    iget-object v6, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v6, v5, v0}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    .end local v4    # "connection":Landroid/telecom/Connection;
    .end local v5    # "connectionId":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 2742
    :cond_5
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceAdded(Landroid/telecom/Conference;)V

    .line 2744
    .end local v1    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "parcelableConference":Landroid/telecom/ParcelableConference;
    :cond_6
    return-void
.end method

.method public final whitelist addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 2755
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telecom/ConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    .line 2756
    return-void
.end method

.method public final whitelist addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 30
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;
    .param p3, "conference"    # Landroid/telecom/Conference;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2790
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p2}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 2791
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2792
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v23, v3

    .line 2793
    .local v23, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2794
    .local v3, "conferenceId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2795
    iget-object v4, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    move-object/from16 v28, v3

    goto :goto_0

    .line 2794
    :cond_0
    move-object/from16 v28, v3

    .line 2798
    .end local v3    # "conferenceId":Ljava/lang/String;
    .local v28, "conferenceId":Ljava/lang/String;
    :goto_0
    new-instance v29, Landroid/telecom/ParcelableConnection;

    .line 2800
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v5

    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v6

    .line 2802
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v7

    .line 2803
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v8

    .line 2804
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v9

    .line 2805
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v10

    .line 2806
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v11

    .line 2807
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v12

    .line 2808
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2809
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v3

    :goto_1
    move-object v13, v3

    .line 2810
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v14

    .line 2811
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v15

    .line 2812
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v16

    .line 2813
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v17

    .line 2814
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v19

    .line 2815
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v21

    .line 2816
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v22

    .line 2818
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    .line 2820
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallDirection()I

    move-result v26

    .line 2825
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerNumberVerificationStatus()I

    move-result v27

    move-object/from16 v3, v29

    move-object/from16 v4, p1

    move-object/from16 v25, v28

    invoke-direct/range {v3 .. v27}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;II)V

    .line 2827
    .local v3, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    iget-object v4, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v4, v2, v3}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 2829
    .end local v3    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v23    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "conferenceId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method greylist-max-o addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .line 3279
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 3280
    return-void
.end method

.method greylist-max-o addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .line 3284
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 3285
    return-void
.end method

.method public final whitelist conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .line 2683
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 2684
    return-void
.end method

.method public final whitelist connectionServiceFocusReleased()V
    .locals 1

    .line 2769
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v0}, Landroid/telecom/ConnectionServiceAdapter;->onConnectionServiceFocusReleased()V

    .line 2770
    return-void
.end method

.method public greylist-max-o containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3274
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist createRemoteIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConference;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2648
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2611
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createRemoteOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConference;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2666
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2630
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAllConferences()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation

    .line 2848
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 2838
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 3496
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1931
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onBindClient(Landroid/content/Intent;)V

    .line 1932
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist onBindClient(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1948
    return-void
.end method

.method public whitelist onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .line 3212
    return-void
.end method

.method public greylist-max-o onConferenceAdded(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3230
    return-void
.end method

.method public greylist-max-o onConferenceRemoved(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3236
    return-void
.end method

.method public greylist-max-o onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 3218
    return-void
.end method

.method public greylist-max-o onConnectionRemoved(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 3224
    return-void
.end method

.method public whitelist onConnectionServiceFocusGained()V
    .locals 0

    .line 3268
    return-void
.end method

.method public whitelist onConnectionServiceFocusLost()V
    .locals 0

    .line 3262
    return-void
.end method

.method public blacklist onCreateConferenceComplete(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 2907
    return-void
.end method

.method public greylist-max-o onCreateConnectionComplete(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 2895
    return-void
.end method

.method public whitelist onCreateIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2882
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateIncomingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2966
    return-void
.end method

.method public whitelist onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2864
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2927
    return-void
.end method

.method public whitelist onCreateIncomingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "fromPhoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3156
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3057
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateOutgoingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2986
    return-void
.end method

.method public whitelist onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3025
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2946
    return-void
.end method

.method public whitelist onCreateOutgoingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "fromPhoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 3109
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3201
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onHandoverFailed(Landroid/telecom/ConnectionRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/telecom/ConnectionRequest;
    .param p2, "error"    # I

    .line 3171
    return-void
.end method

.method public whitelist onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .line 3248
    return-void
.end method

.method public whitelist onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 3254
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1938
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 1939
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o removeConnection(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 3339
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 3340
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 3341
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3342
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeConnection - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/telecom/ConnectionService;->connectionToString(Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Telecom-ConnectionService"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3347
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3348
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 3349
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConnectionRemoved(Landroid/telecom/Connection;)V

    .line 3351
    :cond_0
    return-void
.end method

.method public blacklist setReadyForTest()V
    .locals 1

    .line 3505
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 3506
    return-void
.end method

.method public greylist-max-o triggerConferenceRecalculate()V
    .locals 0

    .line 2997
    return-void
.end method
