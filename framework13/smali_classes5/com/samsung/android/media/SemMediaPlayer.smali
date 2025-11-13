.class public Lcom/samsung/android/media/SemMediaPlayer;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;,
        Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;,
        Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$BGMClass;,
        Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;,
        Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;,
        Lcom/samsung/android/media/SemMediaPlayer$EventHandler;,
        Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;,
        Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;,
        Lcom/samsung/android/media/SemMediaPlayer$SeekType;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackEffect;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackDirection;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackRateAudioMode;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_VOLUME_FADE_IN:I = 0x1

.field public static final whitelist AUDIO_VOLUME_FADE_INOUT:I = 0x3

.field public static final whitelist AUDIO_VOLUME_FADE_NONE:I = 0x0

.field public static final whitelist AUDIO_VOLUME_FADE_OUT:I = 0x2

.field private static final blacklist INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final blacklist INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final blacklist INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final blacklist INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final blacklist INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final blacklist INVOKE_ID_REMOVE_EXTERNAL_SOURCE:I = 0x8

.field private static final blacklist INVOKE_ID_SELECT_TRACK:I = 0x4

.field public static final whitelist KEY_PARAMETER_ADAPTIVE_ACCURATE_SEEK_THRESHOLD:I = 0x88bd

.field private static final blacklist KEY_PARAMETER_DYNAMIC_VIEW_CONFIGURATION:I = 0x9471

.field private static final blacklist KEY_PARAMETER_DYNAMIC_VIEW_DELEGATE_CONFIGURATION:I = 0x9472

.field public static final whitelist KEY_PARAMETER_ENABLE_ALL_SUPER_SLOW_REGION:I = 0x8ca0

.field public static final whitelist KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I = 0x88bc

.field public static final whitelist KEY_PARAMETER_HOVERING_TYPE:I = 0x7cce

.field public static final whitelist KEY_PARAMETER_TIMED_TEXT_TRACK_TIME_SYNC:I = 0x7b0d

.field private static final blacklist MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final blacklist MEDIA_CHANGED_VIDEO_SIZE:I = 0x5

.field private static final blacklist MEDIA_ERROR:I = 0x64

.field public static final whitelist MEDIA_ERROR_IO:I = -0x3ec

.field public static final whitelist MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final whitelist MEDIA_ERROR_RESOURCE_OVERSPEC:I = -0x1389

.field public static final whitelist MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final whitelist MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final blacklist MEDIA_INFO:I = 0xc8

.field public static final whitelist MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final whitelist MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final blacklist MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final whitelist MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final whitelist MEDIA_INFO_NO_AUDIO:I = 0x2adc

.field public static final whitelist MEDIA_INFO_NO_VIDEO:I = 0x2add

.field public static final whitelist MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final whitelist MEDIA_INFO_SUPERSLOW_REGION:I = 0x2ade

.field public static final whitelist MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final whitelist MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_INFO_UNSUPPORTED_AUDIO:I = 0x2ac6

.field public static final whitelist MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final whitelist MEDIA_INFO_UNSUPPORTED_TICKPLAY:I = 0x2ac9

.field public static final whitelist MEDIA_INFO_UNSUPPORTED_VIDEO:I = 0x2ac7

.field public static final whitelist MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field private static final blacklist MEDIA_INIT_COMPLETE:I = 0x1

.field private static final blacklist MEDIA_NOTIFY_TIME:I = 0x62

.field private static final blacklist MEDIA_PAUSED:I = 0x7

.field private static final blacklist MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final blacklist MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final blacklist MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final blacklist MEDIA_TIMED_TEXT:I = 0x63

.field public static final whitelist PLAYBACK_DIRECTION_BACKWARD:I = 0x1

.field public static final whitelist PLAYBACK_DIRECTION_FORWARD:I = 0x0

.field public static final whitelist PLAYBACK_EFFECT_BACKWARD:I = 0x2

.field public static final whitelist PLAYBACK_EFFECT_FORWARD:I = 0x1

.field public static final whitelist PLAYBACK_EFFECT_NONE:I = 0x0

.field public static final whitelist PLAYBACK_EFFECT_SWING:I = 0x3

.field public static final blacklist PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final blacklist PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final blacklist PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field public static final whitelist SEEK_TYPE_ACCURATE_FRAME:I = 0x1

.field public static final whitelist SEEK_TYPE_ADAPTIVE_ACCURATE_FRAME:I = 0x5

.field public static final whitelist SEEK_TYPE_CLOSEST_SYNC_FRAME:I = 0x4

.field public static final whitelist SEEK_TYPE_ONE_FRAME_BACKWARD:I = 0x2

.field public static final whitelist SEEK_TYPE_ONE_FRAME_FORWARD:I = 0x3

.field public static final whitelist SEEK_TYPE_VIDEO_PREVIEW:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemMediaPlayer"

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private blacklist mAttributes:Landroid/media/AudioAttributes;

.field private blacklist mBGMClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$BGMClass;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

.field private blacklist mExtSubtitleDataHandler:Landroid/os/Handler;

.field private blacklist mExtSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

.field private blacklist mInbandTrackIndices:Ljava/util/BitSet;

.field private blacklist mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mIntSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

.field private blacklist mNativeContext:J

.field private blacklist mNativeSurfaceTexture:J

.field private blacklist mOnBufferingUpdateListener:Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

.field private blacklist mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private blacklist mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

.field private blacklist mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private blacklist mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private blacklist mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private blacklist mOnTimedTextListener:Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

.field private blacklist mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

.field private blacklist mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScreenOnWhilePlaying:Z

.field private blacklist mSelectedSubtitleTrackIndex:I

.field private blacklist mSpeedRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStayAwake:Z

.field private blacklist mSubtitleController:Landroid/media/SubtitleController;

.field private blacklist mSubtitleDataListenerDisabled:Z

.field private blacklist mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

.field private blacklist mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private blacklist mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

.field private final blacklist mTimeProviderLock:Ljava/lang/Object;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtSubtitleDataHandler(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIntSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeContext(Lcom/samsung/android/media/SemMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnBufferingUpdateListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnBufferingUpdateListener:Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnTimedTextListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnTimedTextListener:Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnVideoSizeChangedListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitleDataListenerDisabled(Lcom/samsung/android/media/SemMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleDataListenerDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuperSlowInfo(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpopulateInbandTracks(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks([Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscanInternalSubtitleTracks(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstayAwake(Lcom/samsung/android/media/SemMediaPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_stream_event_onStreamDataRequest(JJJI)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/media/SemMediaPlayer;->native_stream_event_onStreamDataRequest(JJJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_stream_event_onStreamPresentationEnd(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer;->native_stream_event_onStreamPresentationEnd(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_stream_event_onTearDown(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer;->native_stream_event_onTearDown(JJ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 459
    const-string/jumbo v0, "semmediaplayer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lcom/samsung/android/media/SemMediaPlayer;->native_init()V

    .line 461
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1766
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    .line 1767
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    .line 2664
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    .line 3300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    .line 3462
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    .line 3484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    .line 4473
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 4476
    new-instance v1, Lcom/samsung/android/media/SemMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/SemMediaPlayer$2;-><init>(Lcom/samsung/android/media/SemMediaPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIntSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    .line 471
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 472
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    goto :goto_0

    .line 473
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    .line 474
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    goto :goto_0

    .line 476
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    .line 479
    :goto_0
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;-><init>(Lcom/samsung/android/media/SemMediaPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 480
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 482
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 483
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mAttributes:Landroid/media/AudioAttributes;

    .line 486
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->native_setup(Ljava/lang/Object;Landroid/media/AudioAttributes;)V

    .line 487
    return-void
.end method

.method private native blacklist _crop(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _getCurrentFrame(II)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _init(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _init(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _notifyAt(J)V
.end method

.method private native blacklist _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _release()V
.end method

.method private native blacklist _reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _seekTo(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _setAudioAttributes(Landroid/media/AudioAttributes;)V
.end method

.method private native blacklist _setBackgroundMusic(Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _setVideoFilterLevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method private native blacklist _setVideoScalingMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _setVideoSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native blacklist _setVolume(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _updateRegionSEFData(ILandroid/os/Parcel;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private blacklist attemptInit(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 555
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    const/4 v1, 0x1

    .line 558
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 557
    :cond_0
    return v1

    .line 555
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 558
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_2

    const-string v2, "null uri"

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMediaPlayer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 4310
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4311
    const/4 v0, 0x1

    return v0

    .line 4313
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Landroid/os/IBinder;"
        }
    .end annotation

    .line 762
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    const-string/jumbo v0, "widevine://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    const-string v0, "SemMediaPlayer"

    const-string v1, "Widevine classic is no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 763
    :cond_2
    :goto_0
    new-instance v0, Landroid/media/MediaHTTPService;

    invoke-direct {v0, p2}, Landroid/media/MediaHTTPService;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/media/MediaHTTPService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    if-eqz p1, :cond_2

    .line 642
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 643
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    const-string v2, "SemMediaPlayer"

    if-nez v0, :cond_0

    .line 644
    const-string v3, "cache directory doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-object v1

    .line 647
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no permission to write cache directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-object v1

    .line 651
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 640
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getInbandTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1799
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1802
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1804
    sget-object v2, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1805
    .local v2, "trackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    nop

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1805
    return-object v2

    .line 1807
    .end local v2    # "trackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1809
    throw v2
.end method

.method private blacklist init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p4, "cacheDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 705
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v0, 0x0

    .line 706
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 708
    .local v1, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 709
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 710
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 712
    const/4 v2, 0x0

    .line 713
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 714
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2

    .line 715
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 716
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 717
    goto :goto_0

    .line 719
    .end local v2    # "i":I
    :cond_0
    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method private blacklist init(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p5, "cacheDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 725
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 726
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 729
    :cond_0
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 732
    if-eqz v1, :cond_1

    .line 734
    nop

    .line 735
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/media/SemMediaPlayer;->createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;

    move-result-object v4

    .line 734
    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/media/SemMediaPlayer;->_init(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void

    .line 742
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 744
    const/4 v3, 0x0

    .line 746
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 747
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 748
    .local v4, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 751
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 754
    .end local v3    # "is":Ljava/io/FileInputStream;
    nop

    .line 757
    return-void

    .line 750
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 751
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 753
    :cond_2
    throw v4

    .line 755
    .end local v3    # "is":Ljava/io/FileInputStream;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "init failed with file scheme"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 731
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "init failed with content scheme"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist internalSetDynamicViewingConfigurations(Ljava/util/List;Z)V
    .locals 6
    .param p2, "delegatePlaybackControl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4248
    .local p1, "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    if-eqz p1, :cond_7

    .line 4252
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4258
    .local v0, "request":Landroid/os/Parcel;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;

    .line 4260
    .local v2, "config":Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->getStartTime()I

    move-result v3

    .line 4261
    .local v3, "startTimeMs":I
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->getEndTime()I

    move-result v4

    .line 4262
    .local v4, "endTimeMs":I
    if-nez p2, :cond_1

    if-ge v3, v4, :cond_0

    goto :goto_1

    .line 4263
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "DynamicViewingConfiguration startTimeMs is equal or greater than endTimeMs in not delegated"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "request":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .end local p2    # "delegatePlaybackControl":Z
    throw v1

    .line 4266
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .restart local p2    # "delegatePlaybackControl":Z
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4267
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4268
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->getSpeedRate()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4269
    .end local v2    # "config":Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;
    .end local v3    # "startTimeMs":I
    .end local v4    # "endTimeMs":I
    goto :goto_0

    .line 4271
    :cond_2
    if-nez p2, :cond_4

    .line 4272
    const v1, 0x9471

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 4273
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setDynamicViewingConfigurations is called after init()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "request":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .end local p2    # "delegatePlaybackControl":Z
    throw v1

    .line 4276
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .restart local p2    # "delegatePlaybackControl":Z
    :cond_4
    const v1, 0x9472

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 4281
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4282
    nop

    .line 4283
    return-void

    .line 4277
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setDynamicViewingConfigurations delegatePlaybackControl failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "request":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .end local p2    # "delegatePlaybackControl":Z
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4281
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .restart local p2    # "delegatePlaybackControl":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4282
    throw v1

    .line 4253
    .end local v0    # "request":Landroid/os/Parcel;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dynamicViewingConfigs is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4249
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dynamicViewingConfigs can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isVideoScalingModeSupported(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 856
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final native blacklist native_finalize()V
.end method

.method private static final native blacklist native_init()V
.end method

.method private final native blacklist native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;Landroid/media/AudioAttributes;)V
.end method

.method private static native blacklist native_stream_event_onStreamDataRequest(JJJI)V
.end method

.method private static native blacklist native_stream_event_onStreamPresentationEnd(JJ)V
.end method

.method private static native blacklist native_stream_event_onTearDown(JJ)V
.end method

.method private blacklist populateInbandTracks()V
    .locals 1

    .line 4703
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks([Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    .line 4704
    return-void
.end method

.method private blacklist populateInbandTracks([Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 6
    .param p1, "trackInfo"    # [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    .line 4708
    if-nez p1, :cond_0

    .line 4709
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getInbandTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    move-result-object v0

    .local v0, "tracks":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    goto :goto_0

    .line 4711
    .end local v0    # "tracks":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :cond_0
    move-object v0, p1

    .line 4713
    .restart local v0    # "tracks":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 4714
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 4715
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4716
    goto :goto_2

    .line 4718
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 4721
    aget-object v3, v0, v2

    if-nez v3, :cond_2

    .line 4722
    const-string v3, "SemMediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected NULL track at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    :cond_2
    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    aget-object v3, v0, v2

    .line 4726
    invoke-virtual {v3}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 4728
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v4, v0, v2

    .line 4729
    invoke-virtual {v4}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 4728
    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    .line 4730
    .local v3, "track":Landroid/media/SubtitleTrack;
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4731
    nop

    .end local v3    # "track":Landroid/media/SubtitleTrack;
    goto :goto_2

    .line 4732
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4714
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4735
    .end local v2    # "i":I
    :cond_4
    monitor-exit v1

    .line 4736
    return-void

    .line 4735
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 3280
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPlayer;

    .line 3281
    .local v0, "player":Lcom/samsung/android/media/SemMediaPlayer;
    if-nez v0, :cond_0

    .line 3282
    return-void

    .line 3285
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    if-eqz v1, :cond_1

    .line 3286
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3287
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3289
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private blacklist scanInternalSubtitleTracks()V
    .locals 1

    .line 4693
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->setSubtitleAnchor()V

    .line 4695
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 4697
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_0

    .line 4698
    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 4700
    :cond_0
    return-void
.end method

.method private blacklist selectOrDeselectInbandTrack(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1955
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1957
    .local v1, "reply":Landroid/os/Parcel;
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1963
    nop

    .line 1964
    return-void

    .line 1961
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1963
    throw v2
.end method

.method private blacklist selectOrDeselectTrack(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1918
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 1920
    const/4 v0, 0x0

    .line 1922
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1926
    nop

    .line 1928
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/SubtitleTrack;

    .line 1929
    .local v1, "track":Landroid/media/SubtitleTrack;
    if-nez v1, :cond_0

    .line 1931
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 1932
    return-void

    .line 1935
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v2, :cond_1

    .line 1936
    return-void

    .line 1939
    :cond_1
    if-nez p2, :cond_3

    .line 1941
    invoke-virtual {v2}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v2

    if-ne v2, v1, :cond_2

    .line 1942
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_0

    .line 1944
    :cond_2
    const-string v2, "SemMediaPlayer"

    const-string/jumbo v3, "trying to deselect track that was not selected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :goto_0
    return-void

    .line 1949
    :cond_3
    invoke-virtual {v2, v1}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 1950
    return-void

    .line 1923
    .end local v1    # "track":Landroid/media/SubtitleTrack;
    :catch_0
    move-exception v1

    .line 1925
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-void
.end method

.method private blacklist setOnSubtitleDataListenerInt(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2652
    monitor-enter p0

    .line 2653
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    .line 2654
    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    .line 2655
    monitor-exit p0

    .line 2656
    return-void

    .line 2655
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized blacklist setSubtitleAnchor()V
    .locals 6

    monitor-enter p0

    .line 4440
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4441
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 4442
    .local v0, "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SetSubtitleAnchorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4443
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4444
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4445
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/samsung/android/media/SemMediaPlayer$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$1;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4465
    :try_start_1
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4469
    goto :goto_0

    .line 4466
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    :catch_0
    move-exception v3

    .line 4467
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 4468
    const-string v4, "SemMediaPlayer"

    const-string v5, "failed to join SetSubtitleAnchorThread"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4471
    .end local v0    # "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .line 1201
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1202
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 1204
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1208
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mStayAwake:Z

    .line 1209
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    .line 1210
    return-void
.end method

.method private blacklist updateSurfaceScreenOn()V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 1214
    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1216
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist addBackgroundMusic(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 3
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 3523
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$BGMClass-IA;)V

    .line 3524
    .local v0, "bgmClass":Lcom/samsung/android/media/SemMediaPlayer$BGMClass;
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->fd:Ljava/io/FileDescriptor;

    .line 3525
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->offset:J

    .line 3526
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->length:J

    .line 3527
    iput p2, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->startTimeMs:I

    .line 3528
    iput p3, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->endTimeMs:I

    .line 3529
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3530
    return-void
.end method

.method public whitelist addBackgroundMusic(Ljava/io/FileDescriptor;II)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 3500
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$BGMClass-IA;)V

    .line 3501
    .local v0, "bgmClass":Lcom/samsung/android/media/SemMediaPlayer$BGMClass;
    iput-object p1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->fd:Ljava/io/FileDescriptor;

    .line 3502
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->offset:J

    .line 3503
    const-wide v1, 0x7ffffffffffffffL

    iput-wide v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->length:J

    .line 3504
    iput p2, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->startTimeMs:I

    .line 3505
    iput p3, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->endTimeMs:I

    .line 3506
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3507
    return-void
.end method

.method public whitelist addRegion(IIII)V
    .locals 2
    .param p1, "playbackRate"    # I
    .param p2, "videoStartTimeMs"    # I
    .param p3, "videoEndTimeMs"    # I
    .param p4, "audioEndTimeMs"    # I

    .line 3310
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion-IA;)V

    .line 3311
    .local v0, "speedRegion":Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;
    iput p1, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->speedRate:I

    .line 3312
    iput p2, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoStart:I

    .line 3313
    iput p3, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoEnd:I

    .line 3314
    iput p4, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    .line 3316
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3317
    return-void
.end method

.method public whitelist addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4549
    move-object v0, p1

    .line 4550
    .local v0, "fIs":Ljava/io/InputStream;
    move-object v1, p2

    .line 4552
    .local v1, "fFormat":Landroid/media/MediaFormat;
    if-eqz p2, :cond_1

    .line 4556
    if-eqz p1, :cond_0

    .line 4559
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v2

    .line 4560
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4561
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4563
    :cond_0
    const-string v2, "SemMediaPlayer"

    const-string v3, "addSubtitleSource called with null InputStream"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    .line 4569
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SubtitleReadThread"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4575
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 4576
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4577
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/samsung/android/media/SemMediaPlayer$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$3;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4650
    return-void

    .line 4553
    .end local v2    # "thread":Landroid/os/HandlerThread;
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4333
    invoke-static {p2}, Lcom/samsung/android/media/SemMediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4336
    if-eqz p1, :cond_1

    .line 4340
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4341
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4342
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4344
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4345
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 4346
    .local v3, "reply":Landroid/os/Parcel;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4348
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    const-string v5, "SemMediaPlayer"

    const-string/jumbo v6, "send invoke key : INVOKE_ID_ADD_EXTERNAL_SOURCE_FD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4350
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4351
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 4352
    const-wide v5, 0x7ffffffffffffffL

    invoke-virtual {v2, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 4353
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4354
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4356
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4357
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4358
    nop

    .line 4360
    .end local v2    # "request":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 4361
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 4364
    .end local v1    # "is":Ljava/io/FileInputStream;
    nop

    .line 4368
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 4369
    return-void

    .line 4356
    .restart local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "request":Landroid/os/Parcel;
    .restart local v3    # "reply":Landroid/os/Parcel;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4357
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4358
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "mimeType":Ljava/lang/String;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4360
    .end local v2    # "request":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "mimeType":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 4361
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 4363
    throw v2

    .line 4366
    .end local v1    # "is":Ljava/io/FileInputStream;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4337
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4334
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal mimeType for timed text source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4335
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist applyBackgroundMusic()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3567
    .local v0, "p":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackgroundMusic  size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3571
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget-object v3, v3, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 3572
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3573
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget-wide v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->offset:J

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3574
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget-wide v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->length:J

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3575
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->startTimeMs:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3576
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->endTimeMs:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3580
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 3577
    :catch_0
    move-exception v3

    .line 3578
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "setBackgroundMusic ParcelFileDescriptor.dup failed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3569
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3582
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setBackgroundMusic(Landroid/os/Parcel;)V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3585
    return-void
.end method

.method public whitelist applyRegion(II)Z
    .locals 7
    .param p1, "updatePositionMs"    # I
    .param p2, "representativeRegionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3334
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_4

    .line 3335
    if-lez v1, :cond_0

    .line 3336
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3338
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3339
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3340
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoEnd:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3342
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    if-eq v4, v3, :cond_1

    if-eq p2, v3, :cond_1

    .line 3343
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3345
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    const/4 v4, 0x0

    const-string v5, "Mismatched input of data."

    const-string v6, "SemMediaPlayer"

    if-eq v2, v3, :cond_2

    if-ne p2, v3, :cond_2

    .line 3346
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3348
    return v4

    .line 3349
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    if-ne v2, v3, :cond_3

    if-eq p2, v3, :cond_3

    .line 3350
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3352
    return v4

    .line 3354
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->speedRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3334
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3357
    .end local v1    # "i":I
    :cond_4
    if-eq p2, v3, :cond_5

    .line 3358
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3359
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3362
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3363
    .local v1, "s":Ljava/lang/String;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3364
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3365
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/media/SemMediaPlayer;->_updateRegionSEFData(ILandroid/os/Parcel;)Z

    move-result v3

    .line 3366
    .local v3, "ret":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3367
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3368
    return v3
.end method

.method public blacklist clearBackgoundMusic()V
    .locals 1

    .line 3540
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3541
    return-void
.end method

.method public whitelist clearBackgroundMusic()V
    .locals 2

    .line 3551
    const-string v0, "SemMediaPlayer"

    const-string v1, "clearBackgroundMusic()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3553
    return-void
.end method

.method public blacklist clearOnSubtitleDataListener()V
    .locals 1

    .line 2647
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSubtitleDataListenerInt(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 2648
    return-void
.end method

.method public whitelist crop(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 1038
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaPlayer;->_crop(IIII)V

    .line 1039
    return-void
.end method

.method public whitelist deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1913
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 1914
    return-void
.end method

.method public blacklist easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 3
    .param p1, "rate"    # F
    .param p2, "audioMode"    # I

    .line 1354
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1355
    .local v0, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 1356
    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio playback mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1369
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1365
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1366
    goto :goto_0

    .line 1361
    :pswitch_1
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    const/4 v2, 0x2

    .line 1362
    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 1363
    goto :goto_0

    .line 1358
    :pswitch_2
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1359
    nop

    .line 1371
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 1285
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->native_finalize()V

    .line 1286
    return-void
.end method

.method public whitelist getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1088
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_getCurrentFrame(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentFrame(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1111
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_getCurrentFrame(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist getCurrentPosition()I
.end method

.method public native whitelist getDuration()I
.end method

.method public native whitelist getLastRenderedVideoPosition()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public blacklist getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 2

    .line 2668
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2669
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    if-nez v1, :cond_0

    .line 2670
    new-instance v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;-><init>(Lcom/samsung/android/media/SemMediaPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 2672
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    monitor-exit v0

    return-object v1

    .line 2673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native whitelist getPlaybackDirection()I
.end method

.method public native whitelist getPlaybackEffect()I
.end method

.method public native whitelist getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public whitelist getSelectedTrack(I)I
    .locals 7
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1829
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 1831
    invoke-virtual {v0}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 1832
    .local v0, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v0, :cond_2

    .line 1833
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 1834
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1835
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1836
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v4, v0, :cond_0

    .line 1837
    monitor-exit v1

    return v2

    .line 1834
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1840
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1843
    .end local v0    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1844
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1846
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x7

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1848
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1850
    .local v2, "inbandTrackIndex":I
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1851
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1852
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1853
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 1854
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    return v4

    .line 1851
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1857
    .end local v4    # "i":I
    :cond_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1858
    const/4 v3, -0x1

    .line 1860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1858
    return v3

    .line 1857
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "request":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "trackType":I
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1860
    .end local v2    # "inbandTrackIndex":I
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local v1    # "reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "trackType":I
    :catchall_2
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1862
    throw v2
.end method

.method public whitelist getSuperSlowRegions()[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;
    .locals 1

    .line 3471
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    return-object v0
.end method

.method public whitelist getTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1780
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getInbandTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    move-result-object v0

    .line 1781
    .local v0, "trackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 1782
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    .line 1783
    .local v2, "allTrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1784
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1785
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1787
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v0, v5

    aput-object v5, v2, v3

    goto :goto_1

    .line 1789
    :cond_0
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/media/SubtitleTrack;

    .line 1790
    .local v5, "track":Landroid/media/SubtitleTrack;
    new-instance v6, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    const/4 v7, 0x6

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v6, v2, v3

    .line 1783
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v5    # "track":Landroid/media/SubtitleTrack;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1793
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    return-object v2

    .line 1794
    .end local v2    # "allTrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist init(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 681
    return-void
.end method

.method public blacklist init(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 669
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 670
    return-void
.end method

.method public blacklist init(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz p1, :cond_8

    .line 596
    if-eqz p2, :cond_7

    .line 600
    if-eqz p4, :cond_1

    .line 601
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 602
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/net/CookieManager;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The cookie handler has to be of CookieManager type when cookies are provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 610
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "authority":Ljava/lang/String;
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 613
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;)V

    .line 614
    return-void

    .line 615
    :cond_2
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 618
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    .line 619
    .local v3, "type":I
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v4

    .line 620
    .local v4, "cacheUri":Landroid/net/Uri;
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 621
    .local v5, "actualUri":Landroid/net/Uri;
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/media/SemMediaPlayer;->attemptInit(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 622
    return-void

    .line 623
    :cond_3
    invoke-direct {p0, v0, v5}, Lcom/samsung/android/media/SemMediaPlayer;->attemptInit(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 624
    return-void

    .line 626
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p3, p4, v7}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 628
    .end local v3    # "type":I
    .end local v4    # "cacheUri":Landroid/net/Uri;
    .end local v5    # "actualUri":Landroid/net/Uri;
    goto :goto_1

    .line 630
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/media/SemMediaPlayer;->attemptInit(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 631
    return-void

    .line 633
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, p3, p4, v4}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 636
    :goto_1
    return-void

    .line 597
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "authority":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist init(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 541
    if-eqz p1, :cond_1

    .line 547
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 548
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    .line 552
    :goto_0
    return-void

    .line 542
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist init(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 510
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    .line 511
    return-void
.end method

.method public whitelist init(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 526
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/SemMediaPlayer;->_init(Ljava/io/FileDescriptor;JJ)V

    .line 527
    return-void
.end method

.method public blacklist init(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public blacklist invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1130
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 1131
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1132
    if-nez v0, :cond_0

    .line 1135
    return-void

    .line 1133
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native whitelist isLooping()Z
.end method

.method public native whitelist isPlaying()Z
.end method

.method public native whitelist isVideoDeflickerSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native whitelist isVideoSuperResolutionSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public blacklist notifyAt(J)V
    .locals 0
    .param p1, "mediaTimeUs"    # J

    .line 1248
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_notifyAt(J)V

    .line 1249
    return-void
.end method

.method public blacklist onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 6
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .line 4500
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 4502
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4504
    goto :goto_0

    .line 4503
    :catch_0
    move-exception v0

    .line 4505
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 4507
    :cond_0
    monitor-enter p0

    .line 4508
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 4509
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4510
    if-nez p1, :cond_1

    .line 4511
    return-void

    .line 4514
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    .line 4515
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 4516
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, p1, :cond_2

    .line 4518
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 4519
    goto :goto_2

    .line 4521
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_2
    goto :goto_1

    .line 4522
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4524
    iget v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v2, :cond_4

    .line 4526
    :try_start_3
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4528
    goto :goto_3

    .line 4527
    :catch_1
    move-exception v0

    .line 4529
    :goto_3
    monitor-enter p0

    .line 4530
    :try_start_4
    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 4531
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 4534
    :cond_4
    :goto_4
    return-void

    .line 4522
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 4509
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public whitelist pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 915
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 916
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_pause()V

    .line 917
    return-void
.end method

.method public blacklist playerSetVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 1072
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_setVolume(FF)V

    .line 1073
    return-void
.end method

.method public whitelist release()V
    .locals 4

    .line 974
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 976
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 977
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 978
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 979
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 980
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    .line 981
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    .line 982
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnTimedTextListener:Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    .line 984
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 985
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    if-eqz v3, :cond_0

    .line 986
    invoke-virtual {v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->close()V

    .line 987
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 989
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 991
    monitor-enter p0

    .line 992
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 993
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    .line 994
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    .line 995
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_release()V

    .line 998
    return-void

    .line 995
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 989
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public whitelist removeOutbandSubtitleSources()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4659
    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "removeOutbandSubtitleSources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    .line 4662
    const-string v0, "SemMediaPlayer"

    const-string v1, "Should have subtitle controller already set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    return-void

    .line 4666
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 4668
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 4669
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4670
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4672
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4674
    goto :goto_1

    .line 4673
    :catch_0
    move-exception v3

    .line 4675
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_1
    goto :goto_0

    .line 4676
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 4678
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4680
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_3

    .line 4681
    invoke-virtual {v0}, Landroid/media/SubtitleController;->resetTracks()V

    .line 4684
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 4685
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 4686
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 4687
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4689
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 4690
    return-void

    .line 4687
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 4678
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public whitelist removeOutbandTimedTextSources()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4378
    const/4 v0, 0x0

    .line 4380
    .local v0, "outOfBandSubtitleTrackNum":I
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getInbandTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    move-result-object v1

    .line 4382
    .local v1, "inbandtrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    .line 4383
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    array-length v4, v1

    sub-int v0, v3, v4

    .line 4385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 4386
    .local v3, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4388
    .local v4, "reply":Landroid/os/Parcel;
    const/16 v5, 0x8

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4389
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4391
    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4392
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4393
    nop

    .line 4395
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 4396
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 4397
    .end local v3    # "request":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4399
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 4402
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    .line 4403
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v2, :cond_0

    .line 4404
    invoke-virtual {v2}, Landroid/media/SubtitleController;->getTracks()[Landroid/media/SubtitleTrack;

    move-result-object v2

    .line 4405
    .local v2, "subtitiletracks":[Landroid/media/SubtitleTrack;
    array-length v4, v2

    sub-int/2addr v4, v0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    if-ltz v4, :cond_0

    .line 4406
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    const/4 v6, 0x0

    aget-object v7, v2, v4

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4405
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4409
    .end local v2    # "subtitiletracks":[Landroid/media/SubtitleTrack;
    .end local v4    # "i":I
    :cond_0
    monitor-exit v3

    .line 4410
    return-void

    .line 4409
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 4391
    .restart local v3    # "request":Landroid/os/Parcel;
    .local v4, "reply":Landroid/os/Parcel;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4392
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4393
    nop

    .end local v0    # "outOfBandSubtitleTrackNum":I
    .end local v1    # "inbandtrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    throw v5

    .line 4397
    .end local v3    # "request":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    .restart local v0    # "outOfBandSubtitleTrackNum":I
    .restart local v1    # "inbandtrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method public whitelist reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 927
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 928
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 931
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 933
    goto :goto_1

    .line 932
    :catch_0
    move-exception v3

    .line 934
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_1
    goto :goto_0

    .line 935
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 936
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 937
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {v0}, Landroid/media/SubtitleController;->reset()V

    .line 940
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 941
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    if-eqz v0, :cond_2

    .line 942
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->close()V

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 945
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 947
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 948
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_reset()V

    .line 950
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v0

    .line 951
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 952
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 953
    monitor-exit v0

    .line 954
    return-void

    .line 953
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 945
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 936
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public whitelist seekTo(I)V
    .locals 1
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1008
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(II)V

    .line 1009
    return-void
.end method

.method public whitelist seekTo(II)V
    .locals 0
    .param p1, "msec"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_seekTo(II)V

    .line 1021
    return-void
.end method

.method public whitelist selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1895
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 1896
    return-void
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4293
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 4294
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mAttributes:Landroid/media/AudioAttributes;

    .line 4295
    return-void
.end method

.method public native whitelist setAudioVolumeFade(IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public whitelist setBackgroundMusic(Lcom/samsung/android/media/SemBackgroundMusic;)V
    .locals 2
    .param p1, "semBgm"    # Lcom/samsung/android/media/SemBackgroundMusic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3988
    if-eqz p1, :cond_0

    .line 3992
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemBackgroundMusic;->writeToParcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v0

    .line 3993
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setBackgroundMusic(Landroid/os/Parcel;)V

    .line 3994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3996
    return-void

    .line 3989
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SemBackgroundMusic param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBackgroundMusic(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V
    .locals 2
    .param p1, "SemBGM"    # Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3964
    if-nez p1, :cond_0

    .line 3965
    const-string v0, "SemMediaPlayer"

    const-string v1, "BackgroundMusic Null Pointer Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    return-void

    .line 3969
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->writeToParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 3970
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setBackgroundMusic(Landroid/os/Parcel;)V

    .line 3971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3973
    return-void
.end method

.method public whitelist setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 788
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 790
    if-eqz p1, :cond_0

    .line 791
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .local v0, "surface":Landroid/view/Surface;
    goto :goto_0

    .line 793
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .line 795
    .restart local v0    # "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 796
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    .line 797
    return-void
.end method

.method public whitelist setDynamicViewingConfigurations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4241
    .local p1, "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->internalSetDynamicViewingConfigurations(Ljava/util/List;Z)V

    .line 4242
    return-void
.end method

.method public whitelist setDynamicViewingConfigurations(Ljava/util/List;Z)V
    .locals 0
    .param p2, "delegatePlaybackControl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4227
    .local p1, "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->internalSetDynamicViewingConfigurations(Ljava/util/List;Z)V

    .line 4228
    return-void
.end method

.method public native whitelist setLooping(Z)V
.end method

.method public native blacklist setNextPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V
.end method

.method public whitelist setOnBufferingUpdateListener(Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

    .line 2549
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnBufferingUpdateListener:Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

    .line 2550
    return-void
.end method

.method public whitelist setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 2355
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 2356
    return-void
.end method

.method public whitelist setOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    .line 2483
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    .line 2484
    return-void
.end method

.method public whitelist setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 2235
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 2236
    return-void
.end method

.method public whitelist setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 2263
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 2264
    return-void
.end method

.method public whitelist setOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 2291
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 2292
    return-void
.end method

.method public blacklist setOnSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    .line 2634
    if-eqz p1, :cond_0

    .line 2637
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSubtitleDataListenerInt(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 2638
    return-void

    .line 2635
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setOnSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2612
    if-eqz p1, :cond_1

    .line 2615
    if-eqz p2, :cond_0

    .line 2618
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSubtitleDataListenerInt(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 2619
    return-void

    .line 2616
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2613
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnTimedTextListener(Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    .line 2578
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnTimedTextListener:Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    .line 2579
    return-void
.end method

.method public whitelist setOnVideoSizeChangedListener(Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    .line 2515
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    .line 2516
    return-void
.end method

.method public whitelist setParameter(II)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 1272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1273
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1275
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1276
    return v1
.end method

.method public native whitelist setParameter(ILandroid/os/Parcel;)Z
.end method

.method public whitelist setParameter(ILjava/lang/String;)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1261
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1262
    return v1
.end method

.method public native whitelist setPlaybackDirection(I)V
.end method

.method public native whitelist setPlaybackEffect(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native whitelist setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public native whitelist setPlaybackRange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .line 1191
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1192
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1193
    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1196
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    .line 1198
    :cond_1
    return-void
.end method

.method public whitelist setSubtitleControllerAndAnchor(Landroid/content/Context;Landroid/widget/VideoView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/widget/VideoView;

    .line 4425
    new-instance v0, Landroid/media/SubtitleController;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 4426
    .local v0, "controller":Landroid/media/SubtitleController;
    new-instance v1, Landroid/media/WebVttRenderer;

    invoke-direct {v1, p1}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 4427
    new-instance v1, Landroid/media/TtmlRenderer;

    invoke-direct {v1, p1}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 4428
    new-instance v1, Landroid/media/ClosedCaptionRenderer;

    invoke-direct {v1, p1}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 4429
    new-instance v1, Landroid/media/Cea708CaptionRenderer;

    invoke-direct {v1, p1}, Landroid/media/Cea708CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 4430
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 4431
    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 4432
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 821
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 822
    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 825
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 826
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    .line 827
    return-void
.end method

.method public native whitelist setVideoDeflickerEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public blacklist setVideoFilterLevel(I)V
    .locals 3
    .param p1, "filterLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 4097
    const-string v0, "filterLevel("

    if-ltz p1, :cond_1

    .line 4102
    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    .line 4107
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoFilterLevel(I)V

    .line 4108
    return-void

    .line 4103
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is greater than 100"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4098
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is smaller than 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native blacklist setVideoFilterName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public whitelist setVideoScalingMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 882
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoScalingMode(I)V

    .line 887
    return-void

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native whitelist setVideoSuperResolutionEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public whitelist setVolume(FF)V
    .locals 4
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1057
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, ") or rightVolume("

    const-string v3, "leftVolume("

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 1062
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 1067
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->playerSetVolume(FF)V

    .line 1068
    return-void

    .line 1063
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is greater than 1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is smaller than 0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setWakeMode(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 1156
    const/4 v0, 0x0

    .line 1159
    .local v0, "washeld":Z
    const-string v1, "audio.offload.ignore_setawake"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGNORING setWakeMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void

    .line 1164
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    .line 1165
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1166
    const/4 v0, 0x1

    .line 1167
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1169
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1172
    :cond_2
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1173
    .local v1, "pm":Landroid/os/PowerManager;
    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1174
    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1175
    if-eqz v0, :cond_3

    .line 1176
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1178
    :cond_3
    return-void
.end method

.method public whitelist start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 899
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 901
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    nop

    .line 906
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 904
    throw v0
.end method
