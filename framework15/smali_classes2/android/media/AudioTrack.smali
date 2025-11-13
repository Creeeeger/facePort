.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$TunerConfiguration;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnCodecFormatChangedListener;,
        Landroid/media/AudioTrack$StreamEventCbInfo;,
        Landroid/media/AudioTrack$StreamEventCallback;,
        Landroid/media/AudioTrack$StreamEventHandler;,
        Landroid/media/AudioTrack$MetricsConstants;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$DualMonoMode;,
        Landroid/media/AudioTrack$SupplementaryAudioPlacement;,
        Landroid/media/AudioTrack$EncapsulationMetadataType;,
        Landroid/media/AudioTrack$EncapsulationMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final greylist-max-o AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field private static final blacklist CHANNEL_PAIR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DUAL_MONO_MODE_LL:I = 0x2

.field public static final whitelist DUAL_MONO_MODE_LR:I = 0x1

.field public static final whitelist DUAL_MONO_MODE_OFF:I = 0x0

.field public static final whitelist DUAL_MONO_MODE_RR:I = 0x3

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_DVB_AD_DESCRIPTOR:I = 0x2

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_FRAMEWORK_TUNER:I = 0x1

.field public static final blacklist ENCAPSULATION_METADATA_TYPE_NONE:I = 0x0

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_SUPPLEMENTARY_AUDIO_PLACEMENT:I = 0x3

.field public static final whitelist ENCAPSULATION_MODE_ELEMENTARY_STREAM:I = 0x1

.field public static final whitelist ENCAPSULATION_MODE_HANDLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENCAPSULATION_MODE_NONE:I = 0x0

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x2

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x6

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x3

.field private static final greylist-max-o ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final greylist-max-o ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final greylist-max-o ERROR_WOULD_BLOCK:I = -0x7

.field private static final greylist-max-o GAIN_MAX:F = 1.0f

.field private static final greylist-max-o GAIN_MIN:F = 0.0f

.field private static final greylist-max-o HEADER_V2_SIZE_BYTES:F = 20.0f

.field private static final blacklist MAX_AUDIO_DESCRIPTION_MIX_LEVEL:F = 48.0f

.field public static final whitelist MODE_STATIC:I = 0x0

.field public static final whitelist MODE_STREAM:I = 0x1

.field private static final blacklist NATIVE_EVENT_CAN_WRITE_MORE_DATA:I = 0x9

.field private static final blacklist NATIVE_EVENT_CODEC_FORMAT_CHANGE:I = 0x64

.field private static final greylist-max-o NATIVE_EVENT_MARKER:I = 0x3

.field private static final greylist-max-o NATIVE_EVENT_NEW_IAUDIOTRACK:I = 0x6

.field private static final greylist-max-o NATIVE_EVENT_NEW_POS:I = 0x4

.field private static final greylist-max-o NATIVE_EVENT_STREAM_END:I = 0x7

.field public static final whitelist PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final whitelist PERFORMANCE_MODE_NONE:I = 0x0

.field public static final whitelist PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final whitelist PLAYSTATE_PAUSED:I = 0x2

.field private static final blacklist PLAYSTATE_PAUSED_STOPPING:I = 0x5

.field public static final whitelist PLAYSTATE_PLAYING:I = 0x3

.field public static final whitelist PLAYSTATE_STOPPED:I = 0x1

.field private static final blacklist PLAYSTATE_STOPPING:I = 0x4

.field public static final whitelist STATE_INITIALIZED:I = 0x1

.field public static final whitelist STATE_NO_STATIC_DATA:I = 0x2

.field public static final whitelist STATE_UNINITIALIZED:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_LEFT:I = 0x1

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_NORMAL:I = 0x0

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_RIGHT:I = 0x2

.field private static final greylist-max-o SUPPORTED_OUT_CHANNELS:I = 0xffffffc

.field private static final greylist-max-o TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final whitelist WRITE_BLOCKING:I = 0x0

.field public static final whitelist WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private greylist-max-o mAudioFormat:I

.field private blacklist mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private greylist-max-o mAvSyncBytesRemaining:I

.field private greylist-max-o mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private greylist-max-o mChannelConfiguration:I

.field private greylist-max-o mChannelCount:I

.field private greylist-max-o mChannelIndexMask:I

.field private greylist-max-o mChannelMask:I

.field private final blacklist mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/Utils$ListenerList<",
            "Landroid/media/AudioMetadataReadMap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mDataLoadMode:I

.field private blacklist mEnableSelfRoutingMonitor:Z

.field private greylist-max-o mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final greylist-max-o mInitializationLooper:Landroid/os/Looper;

.field private greylist-max-r mJniData:J

.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist-max-o mNativeBufferSizeInBytes:I

.field private greylist-max-o mNativeBufferSizeInFrames:I

.field protected greylist mNativeTrackInJavaObj:J

.field private blacklist mOffloadDelayFrames:I

.field private blacklist mOffloadEosPending:Z

.field private blacklist mOffloadPaddingFrames:I

.field private blacklist mOffloaded:Z

.field private greylist-max-o mOffset:I

.field private greylist-max-o mPlayState:I

.field private final greylist-max-o mPlayStateLock:Ljava/lang/Object;

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private greylist-max-o mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSampleRate:I

.field private greylist-max-o mSessionId:I

.field private greylist-max-o mState:I

.field private blacklist mStreamEventCbInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/AudioTrack$StreamEventCbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStreamEventCbLock:Ljava/lang/Object;

.field private volatile blacklist mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

.field private blacklist mStreamEventHandlerThread:Landroid/os/HandlerThread;

.field private greylist mStreamType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$EG1sDnofkWd-yTxahEDuDlLu2YA(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->lambda$addOnCodecFormatChangedListener$0(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializationLooper(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffloadEosPending(Landroid/media/AudioTrack;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayState(Landroid/media/AudioTrack;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioTrack;->mPlayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayStateLock(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamEventCbInfoList(Landroid/media/AudioTrack;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamEventCbLock(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAvSyncBytesRemaining(Landroid/media/AudioTrack;I)V
    .locals 0

    iput p1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAvSyncHeader(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffloadEosPending(Landroid/media/AudioTrack;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPlayState(Landroid/media/AudioTrack;I)V
    .locals 0

    iput p1, p0, Landroid/media/AudioTrack;->mPlayState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_start(Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartImpl(Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioTrack;Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smshouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 19

    nop

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xc0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x300

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x1800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v0, 0x14000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/high16 v0, 0xa0000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/high16 v0, 0x300000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/high16 v0, 0x1400000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/high16 v0, 0xc000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v1, "front"

    const-string v3, "back"

    const-string v5, "front of center"

    const-string v7, "side"

    const-string v9, "top front"

    const-string v11, "top back"

    const-string v13, "top side"

    const-string v15, "bottom front"

    const-string v17, "front wide"

    invoke-static/range {v1 .. v18}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>(IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor whitelist <init>(IIIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    const-string v0, "AudioTrack"

    const-string v1, "AudioTrack()"

    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .locals 5

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    iput v0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    iput v0, p0, Landroid/media/AudioTrack;->mOffset:I

    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    iput v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    iput v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v1, Landroid/media/Utils$ListenerList;

    invoke-direct {v1}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    iput-wide v1, p0, Landroid/media/AudioTrack;->mJniData:J

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    :cond_0
    iput-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_0

    :cond_1
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    :goto_0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    move/from16 v9, p4

    move/from16 v8, p6

    const/4 v0, 0x1

    invoke-direct {v15, v11, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v7, 0x0

    iput v7, v15, Landroid/media/AudioTrack;->mState:I

    iput v0, v15, Landroid/media/AudioTrack;->mPlayState:I

    iput-boolean v7, v15, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v15, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    iput v7, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iput v7, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    iput v0, v15, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v1, 0x4

    iput v1, v15, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v2, 0x3

    iput v2, v15, Landroid/media/AudioTrack;->mStreamType:I

    iput v0, v15, Landroid/media/AudioTrack;->mDataLoadMode:I

    iput v1, v15, Landroid/media/AudioTrack;->mChannelConfiguration:I

    iput v7, v15, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iput v7, v15, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v2, 0x0

    iput-object v2, v15, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v7, v15, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    iput v7, v15, Landroid/media/AudioTrack;->mOffset:I

    iput-boolean v7, v15, Landroid/media/AudioTrack;->mOffloaded:Z

    iput v7, v15, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    iput v7, v15, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    sget-object v3, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v3, v15, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    iput-object v2, v15, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v15, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/Utils$ListenerList;

    invoke-direct {v2}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v2, v15, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v15, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v15, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    iput-object v11, v15, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v10, :cond_10

    iget-object v2, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move/from16 v12, p5

    invoke-static {v2, v10, v9, v12}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    iget-object v3, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v3, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x200

    and-int/lit16 v3, v3, -0x101

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v13, v3

    goto :goto_0

    :cond_1
    move-object v13, v3

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_1

    :cond_2
    move/from16 v18, v2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    move/from16 v19, v2

    goto :goto_2

    :cond_3
    move/from16 v19, v2

    :goto_2
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    move/from16 v20, v2

    goto :goto_3

    :cond_4
    if-nez v19, :cond_5

    const/16 v2, 0xc

    move/from16 v20, v2

    goto :goto_3

    :cond_5
    move/from16 v20, v2

    :goto_3
    const/4 v1, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v1

    move/from16 v21, v1

    goto :goto_4

    :cond_6
    move/from16 v21, v1

    :goto_4
    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v19

    move/from16 v5, v21

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    move/from16 v6, p7

    iput-boolean v6, v15, Landroid/media/AudioTrack;->mOffloaded:Z

    const/4 v1, -0x1

    iput v1, v15, Landroid/media/AudioTrack;->mStreamType:I

    invoke-direct {v15, v9}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    iput-object v13, v15, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    if-ltz v8, :cond_f

    iget v1, v15, Landroid/media/AudioTrack;->mSampleRate:I

    filled-new-array {v1}, [I

    move-result-object v1

    move-object/from16 v22, v1

    new-array v5, v0, [I

    invoke-static {v14, v8}, Landroid/media/AudioTrack;->resolvePlaybackSessionId(Landroid/content/Context;I)I

    move-result v1

    aput v1, v5, v7

    if-nez v14, :cond_7

    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    :goto_5
    move-object/from16 v23, v1

    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v24

    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v15, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    iget v4, v15, Landroid/media/AudioTrack;->mChannelMask:I

    iget v1, v15, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v7, v15, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v0, v15, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v12, v15, Landroid/media/AudioTrack;->mDataLoadMode:I

    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->getCurrentOpPackageName()Ljava/lang/String;

    move-result-object v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v26, 0x0

    move/from16 v29, v12

    move-object/from16 v28, v13

    move-wide/from16 v12, v26

    move/from16 v26, v1

    move-object/from16 v1, p0

    move/from16 v27, v4

    move-object/from16 v4, v22

    move-object/from16 v30, v5

    move/from16 v5, v27

    move/from16 v6, v26

    const/16 v26, 0x0

    move v8, v0

    move/from16 v9, v29

    move-object/from16 v10, v30

    move-object/from16 v11, v17

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, v25

    :try_start_1
    invoke-direct/range {v1 .. v17}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    :cond_8
    return-void

    :cond_9
    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    :cond_a
    aget v0, v22, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioTrack;->mSampleRate:I

    aget v0, v30, v26

    iput v0, v1, Landroid/media/AudioTrack;->mSessionId:I

    iget-object v0, v1, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    iget v0, v1, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v1, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, v1, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int/2addr v0, v2

    goto :goto_6

    :cond_b
    const/4 v0, 0x1

    :goto_6
    const/high16 v2, 0x41a00000    # 20.0f

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/2addr v2, v0

    iput v2, v1, Landroid/media/AudioTrack;->mOffset:I

    :cond_c
    iget v0, v1, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_d

    const/4 v0, 0x2

    iput v0, v1, Landroid/media/AudioTrack;->mState:I

    goto :goto_7

    :cond_d
    const/4 v0, 0x1

    iput v0, v1, Landroid/media/AudioTrack;->mState:I

    :goto_7
    iget v0, v1, Landroid/media/AudioTrack;->mSessionId:I

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    iget v0, v1, Landroid/media/AudioTrack;->mPlayerIId:I

    invoke-direct {v1, v0}, Landroid/media/AudioTrack;->native_setPlayerIId(I)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v28, v13

    move-object v1, v15

    move-object v2, v0

    :goto_8
    if-eqz v24, :cond_e

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_9
    throw v2

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move v3, v8

    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null AudioFormat"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;Landroid/media/AudioTrack-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v9}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    return-void
.end method

.method private greylist-max-o audioBuffSizeCheck(I)V
    .locals 3

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    rem-int v1, p1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o audioParamCheck(IIIII)V
    .locals 7

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p1, v0, :cond_0

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_10

    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 v0, 0xd

    const/16 v1, 0xc

    if-ne p4, v0, :cond_2

    if-eq p2, v1, :cond_2

    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENCODING_IEC61937 is configured with channel mask as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", which is not 2 or 8 channels"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    const/4 v0, 0x0

    const-string v2, " for encoding "

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    :sswitch_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    :sswitch_1
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    :cond_3
    invoke-static {p2, p4}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v1

    if-eqz v1, :cond_f

    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    :goto_0
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_9

    const v1, 0xffffff

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    if-nez v5, :cond_5

    invoke-static {p4}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sget v5, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    if-gt v4, v5, :cond_5

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    nop

    :goto_1
    if-eqz v0, :cond_8

    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_6

    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_2

    :cond_6
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-ne v2, v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported channel index mask configuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_2
    if-ne p4, v3, :cond_a

    const/4 p4, 0x2

    :cond_a
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-eq p5, v3, :cond_b

    if-nez p5, :cond_c

    :cond_b
    if-eq p5, v3, :cond_d

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_3
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported audio encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported channel mask configuration "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist beginStreamEventHandling()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.media.AudioTrack.StreamEvent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/AudioTrack$StreamEventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$StreamEventHandler;-><init>(Landroid/media/AudioTrack;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    :cond_0
    return-void
.end method

.method private blacklist blockUntilOffloadDrain(I)Z
    .locals 4

    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return v3

    :cond_1
    :goto_1
    if-ne p1, v3, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    return v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_2
    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private greylist-max-o broadcastRoutingChange()V
    .locals 3

    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseUpdateDeviceId(Landroid/media/AudioDeviceInfo;)V

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o clampGainOrLevel(F)F
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist endStreamEventHandling()V
    .locals 1

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public static whitelist getMaxVolume()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static whitelist getMinBufferSize(III)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x2

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1, p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_1
    sget v2, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p0, v2, :cond_4

    sget v2, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    if-gtz v1, :cond_3

    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist getMinVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getNativeOutputSampleRate(I)I
    .locals 1

    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method public static whitelist isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioTrack;->native_is_direct_output_supported(IIIIIII)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isMultichannelConfigSupported(II)Z
    .locals 8

    const v0, 0xffffffc

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    const-string v0, "Channel configuration features unsupported channels"

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    :try_start_0
    invoke-static {p1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    :goto_0
    nop

    nop

    if-le v0, v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel configuration contains too many channels for encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_2
    const/16 v3, 0xc

    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    const-string v4, "Front channels must be present in multichannel configurations"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_3
    sget-object v4, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int v7, p0, v6

    if-eqz v7, :cond_4

    and-int v7, p0, v6

    if-eq v7, v6, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel pair ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") cannot be used independently"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_4
    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1
.end method

.method private static blacklist isValidAudioDescriptionMixLevel(F)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x42400000    # 48.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isValidDualMonoMode(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic blacklist lambda$addOnCodecFormatChangedListener$0(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .locals 0

    invoke-interface {p1, p0, p3}, Landroid/media/AudioTrack$OnCodecFormatChangedListener;->onCodecFormatChanged(Landroid/media/AudioTrack;Landroid/media/AudioMetadataReadMap;)V

    return-void
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static greylist-max-o loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native greylist-max-o native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native greylist-max-o native_attachAuxEffect(I)I
.end method

.method private final native greylist-max-o native_disableDeviceCallback()V
.end method

.method private final native greylist-max-o native_enableDeviceCallback()V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_flush()V
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getPortId()I
.end method

.method private final native greylist-max-o native_getRoutedDeviceId()I
.end method

.method private native blacklist native_getStartThresholdInFrames()I
.end method

.method private native greylist-max-o native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private native blacklist native_get_audio_description_mix_level_db([F)I
.end method

.method private final native greylist-max-o native_get_buffer_capacity_frames()I
.end method

.method private final native greylist-max-o native_get_buffer_size_frames()I
.end method

.method private native blacklist native_get_dual_mono_mode([I)I
.end method

.method private final native greylist-max-o native_get_flags()I
.end method

.method private final native greylist-max-o native_get_latency()I
.end method

.method private final native greylist-max-o native_get_marker_pos()I
.end method

.method private static final native greylist-max-o native_get_min_buff_size(III)I
.end method

.method private static final native greylist-max-o native_get_output_sample_rate(I)I
.end method

.method private final native greylist-max-o native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native greylist-max-o native_get_playback_rate()I
.end method

.method private final native greylist-max-o native_get_pos_update_period()I
.end method

.method private final native greylist-max-o native_get_position()I
.end method

.method private final native greylist-max-o native_get_timestamp([J)I
.end method

.method private final native greylist-max-o native_get_underrun_count()I
.end method

.method private static native blacklist native_is_direct_output_supported(IIIIIII)Z
.end method

.method private final native greylist-max-o native_pause()V
.end method

.method private final native greylist-max-o native_reload_static()I
.end method

.method private final native greylist-max-o native_setAuxEffectSendLevel(F)I
.end method

.method private native blacklist native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native greylist-max-o native_setOutputDevice(I)Z
.end method

.method private native blacklist native_setPlayerIId(I)V
.end method

.method private final native greylist-max-o native_setPresentation(II)I
.end method

.method private native blacklist native_setStartThresholdInFrames(I)I
.end method

.method private final native greylist-max-o native_setVolume(FF)V
.end method

.method private native blacklist native_set_audio_description_mix_level_db(F)I
.end method

.method private final native greylist-max-o native_set_buffer_size_frames(I)I
.end method

.method private native blacklist native_set_delay_padding(II)V
.end method

.method private native blacklist native_set_dual_mono_mode(I)I
.end method

.method private final native greylist-max-o native_set_loop(III)I
.end method

.method private final native greylist-max-o native_set_marker_pos(I)I
.end method

.method private final native greylist-max-o native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native greylist-max-o native_set_playback_rate(I)I
.end method

.method private final native greylist-max-o native_set_pos_update_period(I)I
.end method

.method private final native greylist-max-o native_set_position(I)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I
.end method

.method private final native greylist-max-o native_start()V
.end method

.method private final native greylist-max-o native_stop()V
.end method

.method private final native greylist-max-o native_write_byte([BIIIZ)I
.end method

.method private final native greylist-max-o native_write_float([FIIIZ)I
.end method

.method private final native blacklist native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I
.end method

.method private final native greylist-max-o native_write_short([SIIIZ)I
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    invoke-direct {v0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    return-void

    :cond_1
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    move-object v1, p4

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1}, Landroid/media/AudioMetadata;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "android.media.AudioTrack"

    const-string v4, "Unable to get audio metadata from byte buffer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v3, v0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/media/Utils$ListenerList;->notify(ILjava/lang/Object;)V

    return-void

    :cond_3
    const/16 v1, 0x9

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_6

    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, v0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->handleStreamEventFromNative(II)V

    return-void
.end method

.method private static greylist-max-o shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 10

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x318

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :cond_0
    return v2

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    if-ge v3, v1, :cond_2

    goto :goto_0

    :cond_2
    if-eq p3, v1, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_4

    const-wide/16 v3, 0x64

    const/16 v5, 0x3e8

    nop

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v8

    invoke-static {v8}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v8, p2

    cmp-long v8, v8, v6

    if-gez v8, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method private greylist-max-o startImpl()V
    .locals 4

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseStart(I)V

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private greylist-max-o testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist testEnableNativeRoutingCallbacksLocked()Z
    .locals 3

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "testEnableNativeRoutingCallbacks failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist tryToDisableNativeRoutingCallback()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    return-void
.end method


# virtual methods
.method public whitelist addOnCodecFormatChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    new-instance v1, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V

    invoke-virtual {v0, p2, p1, v1}, Landroid/media/Utils$ListenerList;->add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    return-void
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 5

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist attachAuxEffect(I)I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method public whitelist createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .locals 1

    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method greylist-max-r deferred_connect(J)V
    .locals 20

    move-object/from16 v12, p0

    iget v0, v12, Landroid/media/AudioTrack;->mState:I

    const/4 v13, 0x1

    if-eq v0, v13, :cond_4

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    move-object/from16 v18, v1

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v19

    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v11

    const-string v17, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v10, v18

    move-wide/from16 v12, p1

    :try_start_1
    invoke-direct/range {v1 .. v17}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    :cond_0
    return-void

    :cond_1
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    :cond_2
    aget v0, v18, v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v0, 0x1

    iput v0, v1, Landroid/media/AudioTrack;->mState:I

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v12

    :goto_0
    move-object v2, v0

    if-eqz v19, :cond_3

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    :cond_4
    move-object v1, v12

    :goto_2
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    return-void
.end method

.method public whitelist flush()V
    .locals 2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    :cond_0
    return-void
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAudioDescriptionMixLeveldB()F
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v0, v1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_audio_description_mix_level_db([F)I

    move-result v3

    if-nez v3, :cond_1

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    nop

    aget v1, v0, v1

    return v1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    return v2
.end method

.method public whitelist getAudioFormat()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public whitelist getAudioSessionId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public whitelist getBufferCapacityInFrames()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getBufferSizeInFrames()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getChannelConfiguration()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public whitelist getDualMonoMode()I
    .locals 4

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/AudioTrack;->native_get_dual_mono_mode([I)I

    move-result v2

    if-nez v2, :cond_1

    aget v3, v1, v0

    invoke-static {v3}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    nop

    aget v0, v1, v0

    return v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v2

    return v0
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .locals 2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public greylist getLatency()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getNotificationMarkerPosition()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public whitelist getOffloadDelay()I
    .locals 2

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOffloadPadding()I
    .locals 2

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPerformanceMode()I
    .locals 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getPlayState()I
    .locals 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_0

    :pswitch_0
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    :pswitch_1
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getPlaybackHeadPosition()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public whitelist getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPlaybackRate()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public whitelist getPositionNotificationPeriod()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSampleRate()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public whitelist getStartThresholdInFrames()I
    .locals 2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getStartThresholdInFrames()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getState()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public whitelist getStreamType()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public whitelist getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getUnderrunCount()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method blacklist handleStreamEventFromNative(II)V
    .locals 4

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist isOffloadedPlayback()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    return v0
.end method

.method public final native greylist native_release()V
.end method

.method public whitelist pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/media/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    invoke-virtual {v1}, Landroid/media/AudioTrack$1;->start()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o playerPause()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method greylist-max-o playerSetAuxEffectSendLevel(ZF)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    invoke-direct {p0, p2}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method greylist-max-o playerSetVolume(ZFF)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-static {v1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p3

    invoke-direct {p0, p2, p3}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    return-void
.end method

.method greylist-max-o playerStart()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method greylist-max-o playerStop()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public whitelist registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V
    .locals 4

    if-eqz p2, :cond_4

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    iget-object v3, v2, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-eq v3, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "StreamEventCallback already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->beginStreamEventHandling()V

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    new-instance v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    invoke-direct {v2, p1, p2}, Landroid/media/AudioTrack$StreamEventCbInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public whitelist reloadStaticData()I
    .locals 2

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist removeOnCodecFormatChangedListener(Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    invoke-virtual {v0, p1}, Landroid/media/Utils$ListenerList;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    return-void
.end method

.method public whitelist setAudioDescriptionMixLeveldB(F)Z
    .locals 3

    invoke-static {p1}, Landroid/media/AudioTrack;->isValidAudioDescriptionMixLevel(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_audio_description_mix_level_db(F)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuxEffectSendLevel(F)I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public whitelist setBufferSizeInFrames(I)I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setDualMonoMode(I)Z
    .locals 3

    invoke-static {p1}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_dual_mono_mode(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Dual Mono mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setLogSessionId(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLoopPoints(III)I
    .locals 2

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_3

    if-ge p1, p2, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    :cond_3
    :goto_1
    const/4 v0, -0x2

    return v0

    :cond_4
    :goto_2
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setNotificationMarkerPosition(I)I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public whitelist setOffloadDelayPadding(II)V
    .locals 2

    if-ltz p2, :cond_3

    if-ltz p1, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    iput p2, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_set_delay_padding(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal use of delay/padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative delay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative padding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOffloadEndOfStream()V
    .locals 3

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "EOS not supported without StreamEventCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported if not playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackHeadPosition(I)I
    .locals 2

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x2

    return v0

    :cond_3
    :goto_1
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    :goto_0
    return-void
.end method

.method public whitelist setPlaybackRate(I)I
    .locals 2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    if-gtz p1, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPositionNotificationPeriod(I)I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist setPresentation(Landroid/media/AudioPresentation;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioTrack;->native_setPresentation(II)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audio presentation is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStartThresholdInFrames(I)I
    .locals 3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setStartThresholdInFrames(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startThresholdInFrames "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist setState(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    return-void
.end method

.method public whitelist setStereoVolume(FF)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setVolume(F)I
    .locals 1

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public whitelist stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    iget-boolean v2, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_0

    :cond_0
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V
    .locals 5

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack$StreamEventCbInfo;

    iget-object v4, v3, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-ne v4, p1, :cond_1

    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StreamEventCallback was not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;II)I
    .locals 10

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const-string v1, "android.media.AudioTrack"

    if-nez v0, :cond_0

    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    return v0

    :cond_0
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v2, :cond_1

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_9

    if-ltz p2, :cond_9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le p2, v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_5

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_4

    move v9, v2

    goto :goto_0

    :cond_4
    move v9, v1

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_6

    move v8, v2

    goto :goto_1

    :cond_6
    move v8, v1

    :goto_1
    move-object v3, p0

    move v6, p2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    :goto_2
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_7

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    if-lez v0, :cond_7

    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    :cond_7
    if-lez v0, :cond_8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_8
    return v0

    :cond_9
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 6

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_0

    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v3, :cond_1

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget v4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v4, v3, :cond_2

    const-string v0, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v1, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    const-string v0, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    :cond_3
    if-eqz p1, :cond_b

    if-ltz p2, :cond_b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550002

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_6
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget v4, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    :cond_7
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v3, v5, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_8

    const-string v3, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return v0

    :cond_8
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_9

    const-string v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    iget v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, p1, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_a

    const-string v5, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return v0

    :cond_a
    iget v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return v0

    :cond_b
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") value"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public whitelist write([BII)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist write([BIII)I
    .locals 9

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v2, p2, p3

    if-ltz v2, :cond_6

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v8, v1

    goto :goto_0

    :cond_4
    move v8, v2

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v0

    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_5

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    if-lez v0, :cond_5

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist write([FIII)I
    .locals 9

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_0

    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const-string v0, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v1, :cond_2

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    add-int v3, p2, p3

    if-ltz v3, :cond_7

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_5

    move v8, v1

    goto :goto_0

    :cond_5
    move v8, v2

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v0

    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_6

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    if-lez v0, :cond_6

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_6
    return v0

    :cond_7
    :goto_1
    const-string v1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public whitelist write([SII)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public whitelist write([SIII)I
    .locals 9

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v2, p2, p3

    if-ltz v2, :cond_6

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v8, v1

    goto :goto_0

    :cond_4
    move v8, v2

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v0

    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_5

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    if-lez v0, :cond_5

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    const/4 v0, -0x3

    return v0
.end method
