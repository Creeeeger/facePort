.class public final Landroid/media/tv/TvInputManager;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$TvInputCallbackRecord;,
        Landroid/media/tv/TvInputManager$TvInputCallback;,
        Landroid/media/tv/TvInputManager$SessionCallback;,
        Landroid/media/tv/TvInputManager$SessionCallbackRecord;,
        Landroid/media/tv/TvInputManager$HardwareCallback;,
        Landroid/media/tv/TvInputManager$Hardware;,
        Landroid/media/tv/TvInputManager$Session;,
        Landroid/media/tv/TvInputManager$SessionDataKey;,
        Landroid/media/tv/TvInputManager$SessionDataType;,
        Landroid/media/tv/TvInputManager$SignalStrength;,
        Landroid/media/tv/TvInputManager$BroadcastInfoType;,
        Landroid/media/tv/TvInputManager$InputState;,
        Landroid/media/tv/TvInputManager$RecordingError;,
        Landroid/media/tv/TvInputManager$TimeShiftMode;,
        Landroid/media/tv/TvInputManager$TimeShiftStatus;,
        Landroid/media/tv/TvInputManager$TvMessageType;,
        Landroid/media/tv/TvInputManager$VideoUnavailableReason;,
        Landroid/media/tv/TvInputManager$DvbDeviceType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BLOCKED_RATINGS_CHANGED:Ljava/lang/String; = "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

.field public static final whitelist ACTION_PARENTAL_CONTROLS_ENABLED_CHANGED:Ljava/lang/String; = "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

.field public static final whitelist ACTION_QUERY_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

.field public static final whitelist ACTION_SETUP_INPUTS:Ljava/lang/String; = "android.media.tv.action.SETUP_INPUTS"

.field public static final whitelist ACTION_VIEW_RECORDING_SCHEDULES:Ljava/lang/String; = "android.media.tv.action.VIEW_RECORDING_SCHEDULES"

.field public static final whitelist BROADCAST_INFO_STREAM_EVENT:I = 0x5

.field public static final whitelist BROADCAST_INFO_TYPE_COMMAND:I = 0x7

.field public static final whitelist BROADCAST_INFO_TYPE_DSMCC:I = 0x6

.field public static final whitelist BROADCAST_INFO_TYPE_PES:I = 0x4

.field public static final whitelist BROADCAST_INFO_TYPE_SECTION:I = 0x3

.field public static final blacklist BROADCAST_INFO_TYPE_SIGNALING_DATA:I = 0x9

.field public static final whitelist BROADCAST_INFO_TYPE_TABLE:I = 0x2

.field public static final whitelist BROADCAST_INFO_TYPE_TIMELINE:I = 0x8

.field public static final whitelist BROADCAST_INFO_TYPE_TS:I = 0x1

.field public static final greylist-max-o DVB_DEVICE_DEMUX:I = 0x0

.field public static final greylist-max-o DVB_DEVICE_DVR:I = 0x1

.field static final greylist-max-o DVB_DEVICE_END:I = 0x2

.field public static final greylist-max-o DVB_DEVICE_FRONTEND:I = 0x2

.field static final greylist-max-o DVB_DEVICE_START:I = 0x0

.field public static final whitelist INPUT_STATE_CONNECTED:I = 0x0

.field public static final whitelist INPUT_STATE_CONNECTED_STANDBY:I = 0x1

.field public static final whitelist INPUT_STATE_DISCONNECTED:I = 0x2

.field public static final whitelist META_DATA_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

.field static final greylist-max-o RECORDING_ERROR_END:I = 0x2

.field public static final whitelist RECORDING_ERROR_INSUFFICIENT_SPACE:I = 0x1

.field public static final whitelist RECORDING_ERROR_RESOURCE_BUSY:I = 0x2

.field static final greylist-max-o RECORDING_ERROR_START:I = 0x0

.field public static final whitelist RECORDING_ERROR_UNKNOWN:I = 0x0

.field public static final blacklist SESSION_DATA_KEY_AD_BUFFER:Ljava/lang/String; = "ad_buffer"

.field public static final blacklist SESSION_DATA_KEY_AD_RESPONSE:Ljava/lang/String; = "ad_response"

.field public static final blacklist SESSION_DATA_KEY_BROADCAST_INFO_RESPONSE:Ljava/lang/String; = "broadcast_info_response"

.field public static final blacklist SESSION_DATA_KEY_CHANNEL_URI:Ljava/lang/String; = "channel_uri"

.field public static final blacklist SESSION_DATA_KEY_TRACKS:Ljava/lang/String; = "tracks"

.field public static final blacklist SESSION_DATA_KEY_TRACK_ID:Ljava/lang/String; = "track_id"

.field public static final blacklist SESSION_DATA_KEY_TRACK_TYPE:Ljava/lang/String; = "track_type"

.field public static final blacklist SESSION_DATA_KEY_TV_MESSAGE_TYPE:Ljava/lang/String; = "tv_message_type"

.field public static final blacklist SESSION_DATA_KEY_VIDEO_UNAVAILABLE_REASON:Ljava/lang/String; = "video_unavailable_reason"

.field public static final blacklist SESSION_DATA_TYPE_AD_BUFFER_CONSUMED:Ljava/lang/String; = "ad_buffer_consumed"

.field public static final blacklist SESSION_DATA_TYPE_AD_RESPONSE:Ljava/lang/String; = "ad_response"

.field public static final blacklist SESSION_DATA_TYPE_BROADCAST_INFO_RESPONSE:Ljava/lang/String; = "broadcast_info_response"

.field public static final blacklist SESSION_DATA_TYPE_TRACKS_CHANGED:Ljava/lang/String; = "tracks_changed"

.field public static final blacklist SESSION_DATA_TYPE_TRACK_SELECTED:Ljava/lang/String; = "track_selected"

.field public static final blacklist SESSION_DATA_TYPE_TUNED:Ljava/lang/String; = "tuned"

.field public static final blacklist SESSION_DATA_TYPE_TV_MESSAGE:Ljava/lang/String; = "tv_message"

.field public static final blacklist SESSION_DATA_TYPE_VIDEO_AVAILABLE:Ljava/lang/String; = "video_available"

.field public static final blacklist SESSION_DATA_TYPE_VIDEO_UNAVAILABLE:Ljava/lang/String; = "video_unavailable"

.field public static final whitelist SIGNAL_STRENGTH_LOST:I = 0x1

.field public static final whitelist SIGNAL_STRENGTH_STRONG:I = 0x3

.field public static final whitelist SIGNAL_STRENGTH_WEAK:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvInputManager"

.field public static final whitelist TIME_SHIFT_INVALID_TIME:J = -0x8000000000000000L

.field public static final whitelist TIME_SHIFT_MODE_AUTO:I = 0x4

.field public static final whitelist TIME_SHIFT_MODE_LOCAL:I = 0x2

.field public static final whitelist TIME_SHIFT_MODE_NETWORK:I = 0x3

.field public static final whitelist TIME_SHIFT_MODE_OFF:I = 0x1

.field public static final whitelist TIME_SHIFT_STATUS_AVAILABLE:I = 0x3

.field public static final whitelist TIME_SHIFT_STATUS_UNAVAILABLE:I = 0x2

.field public static final whitelist TIME_SHIFT_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist TIME_SHIFT_STATUS_UNSUPPORTED:I = 0x1

.field public static final whitelist TV_MESSAGE_GROUP_ID_NONE:J = -0x1L

.field public static final whitelist TV_MESSAGE_KEY_GROUP_ID:Ljava/lang/String; = "android.media.tv.TvInputManager.group_id"

.field public static final whitelist TV_MESSAGE_KEY_RAW_DATA:Ljava/lang/String; = "android.media.tv.TvInputManager.raw_data"

.field public static final whitelist TV_MESSAGE_KEY_STREAM_ID:Ljava/lang/String; = "android.media.tv.TvInputManager.stream_id"

.field public static final whitelist TV_MESSAGE_KEY_SUBTYPE:Ljava/lang/String; = "android.media.tv.TvInputManager.subtype"

.field public static final whitelist TV_MESSAGE_SUBTYPE_CC_608E:Ljava/lang/String; = "CTA 608-E"

.field public static final whitelist TV_MESSAGE_SUBTYPE_WATERMARKING_A335:Ljava/lang/String; = "ATSC A/335"

.field public static final whitelist TV_MESSAGE_TYPE_CLOSED_CAPTION:I = 0x2

.field public static final whitelist TV_MESSAGE_TYPE_OTHER:I = 0x3e8

.field public static final whitelist TV_MESSAGE_TYPE_WATERMARK:I = 0x1

.field public static final blacklist UNKNOWN_CLIENT_PID:I = -0x1

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_AUDIO_ONLY:I = 0x4

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_BUFFERING:I = 0x3

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_BLACKOUT:I = 0x10

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_CARD_INVALID:I = 0xf

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_CARD_MUTE:I = 0xe

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x7

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_LICENSE_EXPIRED:I = 0xa

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NEED_ACTIVATION:I = 0xb

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NEED_PAIRING:I = 0xc

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NO_CARD:I = 0xd

.field public static final blacklist VIDEO_UNAVAILABLE_REASON_CAS_NO_LICENSE:I = 0x9

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_PVR_RECORDING_NOT_ALLOWED:I = 0x8

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_REBOOTING:I = 0x11

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_UNKNOWN:I = 0x12

.field static final greylist-max-o VIDEO_UNAVAILABLE_REASON_END:I = 0x12

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_INSUFFICIENT_RESOURCE:I = 0x6

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_NOT_CONNECTED:I = 0x5

.field static final greylist-max-o VIDEO_UNAVAILABLE_REASON_START:I = 0x0

.field public static final blacklist VIDEO_UNAVAILABLE_REASON_STOPPED:I = 0x13

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_TUNING:I = 0x1

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_UNKNOWN:I = 0x0

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_WEAK_SIGNAL:I = 0x2


# instance fields
.field private final greylist-max-o mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputManager$TvInputCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mClient:Landroid/media/tv/ITvInputClient;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mNextSeq:I

.field private final greylist-max-o mService:Landroid/media/tv/ITvInputManager;

.field private final greylist-max-o mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateMap(Landroid/media/tv/TvInputManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/TvInputManager;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/tv/ITvInputManager;I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iput p2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    new-instance v0, Landroid/media/tv/TvInputManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputManager$1;-><init>(Landroid/media/tv/TvInputManager;)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    new-instance v0, Landroid/media/tv/TvInputManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputManager$2;-><init>(Landroid/media/tv/TvInputManager;)V

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    iget-object v7, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v8, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v7, v5, v8}, Landroid/media/tv/ITvInputManager;->getTvInputState(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_0

    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    new-instance v2, Landroid/media/tv/TvInputManager$4;

    invoke-direct {v2, p0, p5, p6}, Landroid/media/tv/TvInputManager$4;-><init>(Landroid/media/tv/TvInputManager;Ljava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)V

    iget v4, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/media/tv/ITvInputManager;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Landroid/media/tv/TvInputManager$Hardware;

    invoke-direct {v2, v0, v1}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$Hardware-IA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist createSessionInternal(Ljava/lang/String;Landroid/content/AttributionSource;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 14

    move-object v1, p0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v2, v3}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    move-object v4, v0

    iget-object v5, v1, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    iget v0, v1, Landroid/media/tv/TvInputManager;->mNextSeq:I

    add-int/lit8 v6, v0, 0x1

    iput v6, v1, Landroid/media/tv/TvInputManager;->mNextSeq:I

    move v6, v0

    iget-object v0, v1, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v1, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v8, v1, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    iget v13, v1, Landroid/media/tv/TvInputManager;->mUserId:I

    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move v12, v6

    invoke-interface/range {v7 .. v13}, Landroid/media/tv/ITvInputManager;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/content/AttributionSource;ZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v5

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private blacklist getClientPidInternal(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    nop

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getClientPriorityInternal(ILjava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputManager;->getClientPriority(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist isValidUseCase(I)Z
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x190

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/media/tv/TvInputManager$3;

    invoke-direct {v5, p0}, Landroid/media/tv/TvInputManager$3;-><init>(Landroid/media/tv/TvInputManager;)V

    const/4 v3, 0x0

    const/16 v4, 0x190

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/TvInputManager;->acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public whitelist acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/TvInputManager;->acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public greylist acquireTvInputHardware(ILandroid/media/tv/TvInputManager$HardwareCallback;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0, p1, p3, p2}, Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->addBlockedRating(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addHardwareDevice(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputManager;->addHardwareDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/tv/ITvInputManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;Landroid/content/AttributionSource;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist createSession(Ljava/lang/String;Landroid/content/AttributionSource;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;Landroid/content/AttributionSource;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist getAvailableExtensionInterfaceNames(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailableTvStreamConfigList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBlockedRatings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getBlockedRatings(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getClientPid(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->getClientPidInternal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getClientPriority(I)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->isValidUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/tv/TvInputManager;->getClientPriorityInternal(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getClientPriority(ILjava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->isValidUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputManager;->getClientPriorityInternal(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCurrentTunedInfos()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getCurrentTunedInfos(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDvbDeviceList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0}, Landroid/media/tv/ITvInputManager;->getDvbDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getExtensionInterface(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/ITvInputManager;->getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getHardwareList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0}, Landroid/media/tv/ITvInputManager;->getHardwareList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInputState(Ljava/lang/String;)I
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized input ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getTvContentRatingSystemList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getTvContentRatingSystemList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTvInputList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isParentalControlsEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->isParentalControlsEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->isRatingBlocked(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSingleSessionActive()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->isSingleSessionActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyPreviewProgramAddedToWatchNext(Ljava/lang/String;JJ)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist notifyPreviewProgramBrowsableDisabled(Ljava/lang/String;J)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist notifyWatchNextProgramBrowsableDisabled(Ljava/lang/String;J)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-lt v0, p2, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputManager;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DVB device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-direct {v2, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist releaseTvInputHardware(ILandroid/media/tv/TvInputManager$Hardware;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-static {p2}, Landroid/media/tv/TvInputManager$Hardware;->-$$Nest$mgetInterface(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/media/tv/ITvInputManager;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->removeBlockedRating(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeHardwareDevice(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputManager;->removeHardwareDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o requestChannelBrowsable(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->requestChannelBrowsable(Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setParentalControlsEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->setParentalControlsEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
