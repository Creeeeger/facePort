.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$MetadataEditor;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final greylist-max-o DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final greylist-max-o FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final greylist-max-o FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final greylist-max-o FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final greylist-max-o FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final greylist-max-o FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final whitelist FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final whitelist FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final whitelist FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final whitelist FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final whitelist FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final whitelist FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final whitelist FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final whitelist FLAG_KEY_MEDIA_RATING:I = 0x200

.field public static final whitelist FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final whitelist FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static greylist-max-r MEDIA_POSITION_READABLE:I = 0x0

.field public static greylist-max-r MEDIA_POSITION_WRITABLE:I = 0x0

.field public static final greylist-max-o PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final greylist-max-o PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final greylist-max-o PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final greylist-max-o PLAYBACKINFO_VOLUME:I = 0x2

.field public static final greylist-max-o PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final greylist-max-o PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final greylist-max-o PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final greylist-max-o PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final greylist-max-o PLAYBACK_SPEED_1X:F = 1.0f

.field public static final greylist-max-o PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final greylist-max-o PLAYBACK_TYPE_MAX:I = 0x1

.field private static final greylist-max-o PLAYBACK_TYPE_MIN:I = 0x0

.field public static final greylist-max-o PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final greylist-max-o PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final greylist-max-o PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final whitelist PLAYSTATE_BUFFERING:I = 0x8

.field public static final whitelist PLAYSTATE_ERROR:I = 0x9

.field public static final whitelist PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final greylist-max-o PLAYSTATE_NONE:I = 0x0

.field public static final whitelist PLAYSTATE_PAUSED:I = 0x2

.field public static final whitelist PLAYSTATE_PLAYING:I = 0x3

.field public static final whitelist PLAYSTATE_REWINDING:I = 0x5

.field public static final whitelist PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final whitelist PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final whitelist PLAYSTATE_STOPPED:I = 0x1

.field private static final greylist-max-o POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final greylist-max-o POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final greylist-max-o POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final greylist-max-o RCSE_ID_UNREGISTERED:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteControlClient"


# instance fields
.field private final greylist-max-o mCacheLock:Ljava/lang/Object;

.field private greylist-max-o mCurrentClientGenId:I

.field private greylist-max-o mMediaMetadata:Landroid/media/MediaMetadata;

.field private greylist-max-o mMetadata:Landroid/os/Bundle;

.field private greylist-max-o mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

.field private greylist-max-o mNeedsPositionSync:Z

.field private greylist-max-o mOriginalArtwork:Landroid/graphics/Bitmap;

.field private greylist-max-o mPlaybackPositionMs:J

.field private greylist-max-o mPlaybackSpeed:F

.field private greylist-max-o mPlaybackState:I

.field private greylist-max-o mPlaybackStateChangeTimeMs:J

.field private greylist-max-o mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private greylist-max-o mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private final greylist-max-o mRcMediaIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mSession:Landroid/media/session/MediaSession;

.field private greylist-max-o mSessionPlaybackState:Landroid/media/session/PlaybackState;

.field private greylist-max-o mTransportControlFlags:I

.field private greylist-max-o mTransportListener:Landroid/media/session/MediaSession$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCacheLock(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentClientGenId(Landroid/media/RemoteControlClient;)I
    .locals 0

    iget p0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaMetadata(Landroid/media/RemoteControlClient;)Landroid/media/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetadata(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalArtwork(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;
    .locals 0

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportControlFlags(Landroid/media/RemoteControlClient;)I
    .locals 0

    iget p0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaMetadata(Landroid/media/RemoteControlClient;Landroid/media/MediaMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMetadata(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOriginalArtwork(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSeekTo(Landroid/media/RemoteControlClient;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateMetadata(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    const/4 v0, 0x2

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/PendingIntent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    iput v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iput-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    iput v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iput-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private static blacklist getActionForRccFlag(I)J
    .locals 2

    sparse-switch p0, :sswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :sswitch_0
    const-wide/16 v0, 0x80

    return-wide v0

    :sswitch_1
    const-wide/16 v0, 0x100

    return-wide v0

    :sswitch_2
    const-wide/16 v0, 0x20

    return-wide v0

    :sswitch_3
    const-wide/16 v0, 0x40

    return-wide v0

    :sswitch_4
    const-wide/16 v0, 0x1

    return-wide v0

    :sswitch_5
    const-wide/16 v0, 0x2

    return-wide v0

    :sswitch_6
    const-wide/16 v0, 0x200

    return-wide v0

    :sswitch_7
    const-wide/16 v0, 0x4

    return-wide v0

    :sswitch_8
    const-wide/16 v0, 0x8

    return-wide v0

    :sswitch_9
    const-wide/16 v0, 0x10

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
        0x10 -> :sswitch_5
        0x20 -> :sswitch_4
        0x40 -> :sswitch_3
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getActionsFromRccControlFlags(I)J
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    :goto_0
    int-to-long v4, p0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    int-to-long v4, p0

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    long-to-int v4, v2

    invoke-static {v4}, Landroid/media/RemoteControlClient;->getActionForRccFlag(I)J

    move-result-wide v4

    or-long/2addr v0, v4

    :cond_0
    const/4 v4, 0x1

    shl-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static greylist-max-o getCheckPeriodFromSpeed(F)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x3a98

    return-wide v0

    :cond_0
    const v0, 0x466a6000    # 15000.0f

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getRccControlFlagsFromActions(J)I
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    :goto_0
    cmp-long v3, v1, p0

    if-gtz v3, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    and-long v3, v1, p0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Landroid/media/RemoteControlClient;->getRccFlagForAction(J)I

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    const/4 v3, 0x1

    shl-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static blacklist getRccFlagForAction(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    long-to-int v0, p0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    const/16 v1, 0x8

    return v1

    :sswitch_1
    const/16 v1, 0x100

    return v1

    :sswitch_2
    const/16 v1, 0x200

    return v1

    :sswitch_3
    const/16 v1, 0x40

    return v1

    :sswitch_4
    const/16 v1, 0x80

    return v1

    :sswitch_5
    const/4 v1, 0x1

    return v1

    :sswitch_6
    const/4 v1, 0x2

    return v1

    :sswitch_7
    const/4 v1, 0x4

    return v1

    :sswitch_8
    const/16 v1, 0x10

    return v1

    :sswitch_9
    const/16 v1, 0x20

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
        0x10 -> :sswitch_5
        0x20 -> :sswitch_4
        0x40 -> :sswitch_3
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method static blacklist getRccStateFromState(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x6

    return v0

    :pswitch_2
    const/4 v0, 0x7

    return v0

    :pswitch_3
    const/16 v0, 0x9

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/4 v0, 0x5

    return v0

    :pswitch_6
    const/4 v0, 0x4

    return v0

    :pswitch_7
    const/4 v0, 0x3

    return v0

    :pswitch_8
    const/4 v0, 0x2

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_a
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getStateFromRccState(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x6

    return v0

    :pswitch_2
    const/16 v0, 0x9

    return v0

    :pswitch_3
    const/16 v0, 0xa

    return v0

    :pswitch_4
    const/4 v0, 0x5

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_6
    const/4 v0, 0x3

    return v0

    :pswitch_7
    const/4 v0, 0x2

    return v0

    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method private greylist-max-o onSeekTo(IJ)V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-interface {v1, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V

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

.method private greylist-max-o onUpdateMetadata(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    invoke-interface {v1, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V

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

.method static greylist-max-o playbackPositionShouldMove(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o setPlaybackStateInt(IJFZ)V
    .locals 14

    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p2

    move/from16 v12, p4

    iget-object v13, v1, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget v0, v1, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-ne v0, v2, :cond_0

    iget-wide v5, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    iget v0, v1, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_4

    :cond_0
    iput v2, v1, Landroid/media/RemoteControlClient;->mPlaybackState:I

    const-wide/16 v7, -0x1

    if-eqz p5, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    iput-wide v7, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_0

    :cond_1
    iput-wide v3, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_0

    :cond_2
    const-wide v5, -0x7fe688e67fe67d00L

    iput-wide v5, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    :goto_0
    iput v12, v1, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iget-object v0, v1, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/media/RemoteControlClient;->getStateFromRccState(I)I

    move-result v6

    if-eqz p5, :cond_3

    iget-wide v7, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_1

    :cond_3
    nop

    :goto_1
    nop

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    iget-object v5, v1, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-direct {v0, v5}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v5, v0

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v11}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v5

    iput-object v5, v1, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v5, v1, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    iget-object v9, v1, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v5, v9}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_4
    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public whitelist editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 3

    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$MetadataEditor-IA;)V

    if-eqz p1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    iput-boolean v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    iput-boolean v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    :goto_0
    if-nez p1, :cond_2

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-direct {v1, v2}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    :goto_2
    return-object v0
.end method

.method public whitelist getMediaSession()Landroid/media/session/MediaSession;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method public greylist-max-o getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public greylist-max-o registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void
.end method

.method public whitelist setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setPlaybackState(I)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide v2, -0x7fe688e67fe67d00L

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    return-void
.end method

.method public whitelist setPlaybackState(IJF)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    return-void
.end method

.method public whitelist setTransportControlFlags(I)V
    .locals 4

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-direct {v1, v2}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    invoke-static {p1}, Landroid/media/RemoteControlClient;->getActionsFromRccControlFlags(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    iput-object v2, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

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

.method public greylist-max-o unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->removeRccListener(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-void
.end method
