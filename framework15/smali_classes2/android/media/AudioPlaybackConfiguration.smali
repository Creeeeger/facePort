.class public final Landroid/media/AudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPlaybackConfiguration$IPlayerShell;,
        Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;,
        Landroid/media/AudioPlaybackConfiguration$FormatInfo;,
        Landroid/media/AudioPlaybackConfiguration$PlayerMuteEvent;,
        Landroid/media/AudioPlaybackConfiguration$PlayerState;,
        Landroid/media/AudioPlaybackConfiguration$PlayerType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist EXTRA_PLAYER_EVENT_CHANNEL_MASK:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_CHANNEL_MASK"

.field public static final blacklist EXTRA_PLAYER_EVENT_MUTE:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_MUTE"

.field public static final blacklist EXTRA_PLAYER_EVENT_SAMPLE_RATE:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_SAMPLE_RATE"

.field public static final blacklist EXTRA_PLAYER_EVENT_SPATIALIZED:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_SPATIALIZED"

.field public static final whitelist MUTED_BY_APP_OPS:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_CLIENT_VOLUME:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_MASTER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_STREAM_MUTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_STREAM_VOLUME:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_VOLUME_SHAPER:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PLAYER_DEVICEID_INVALID:I = 0x0

.field public static final greylist-max-o PLAYER_PIID_INVALID:I = -0x1

.field public static final whitelist PLAYER_STATE_IDLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_PAUSED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_RELEASED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_STARTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_STOPPED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_AAUDIO:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o PLAYER_TYPE_EXTERNAL_PROXY:I = 0xf

.field public static final greylist-max-o PLAYER_TYPE_HW_SOURCE:I = 0xe

.field public static final whitelist PLAYER_TYPE_JAM_AUDIOTRACK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_JAM_MEDIAPLAYER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_JAM_SOUNDPOOL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PLAYER_UPDATE_DEVICE_ID:I = 0x5

.field public static final blacklist PLAYER_UPDATE_FORMAT:I = 0x8

.field public static final blacklist PLAYER_UPDATE_MUTED:I = 0x7

.field public static final blacklist PLAYER_UPDATE_PORT_ID:I = 0x6

.field public static final greylist-max-o PLAYER_UPID_INVALID:I = -0x1

.field public static final whitelist SEM_PLAYER_STATE_IDLE:I = 0x1

.field public static final whitelist SEM_PLAYER_STATE_PAUSED:I = 0x3

.field public static final whitelist SEM_PLAYER_STATE_RELEASED:I = 0x0

.field public static final whitelist SEM_PLAYER_STATE_STARTED:I = 0x2

.field public static final whitelist SEM_PLAYER_STATE_STOPPED:I = 0x4

.field public static final whitelist SEM_PLAYER_STATE_UNKNOWN:I = -0x1

.field public static final whitelist SEM_PLAYER_TYPE_AAUDIO:I = 0xd

.field public static final whitelist SEM_PLAYER_TYPE_EXTERNAL_PROXY:I = 0xf

.field public static final whitelist SEM_PLAYER_TYPE_HW_SOURCE:I = 0xe

.field public static final whitelist SEM_PLAYER_TYPE_JAM_AUDIOTRACK:I = 0x1

.field public static final whitelist SEM_PLAYER_TYPE_JAM_MEDIAPLAYER:I = 0x2

.field public static final whitelist SEM_PLAYER_TYPE_JAM_SOUNDPOOL:I = 0x3

.field public static final whitelist SEM_PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE:I = 0xb

.field public static final whitelist SEM_PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD:I = 0xc

.field public static final whitelist SEM_PLAYER_TYPE_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static greylist-max-o sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;


# instance fields
.field private greylist-max-o mClientPid:I

.field private greylist-max-o mClientUid:I

.field private blacklist mDeviceId:I

.field private blacklist mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

.field private greylist-max-o mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

.field private blacklist mMutedState:I

.field private greylist-max-o mPlayerAttr:Landroid/media/AudioAttributes;

.field private final greylist-max-o mPlayerIId:I

.field private greylist-max-o mPlayerState:I

.field private greylist-max-o mPlayerType:I

.field private blacklist mSessionId:I

.field private final blacklist mUpdateablePropLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPlayerIId(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplayerDied(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->playerDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "AudioPlaybackConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/PlayerBase$PlayerIdCard;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iput p4, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    iget-object v1, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    :goto_0
    iget v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    sget-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-direct {v2, v1, v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    sget-object v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;
    .locals 4

    new-instance v0, Landroid/media/AudioPlaybackConfiguration;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-direct {v0, v1}, Landroid/media/AudioPlaybackConfiguration;-><init>(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setSystemUsage(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    :goto_1
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    const/4 v2, -0x1

    iput v2, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iput v2, v0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iput v2, v0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    sget-object v2, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/media/AudioPlaybackConfiguration;->setUpdateableFields(IIILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V

    return-object v0
.end method

.method private blacklist isMuteAffectingActiveState()Z
    .locals 1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

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

.method private greylist-max-o playerDied()V
    .locals 2

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-interface {v0, v1}, Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;->playerDeath(I)V

    :cond_0
    return-void
.end method

.method public static blacklist playerStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "PLAYER_UPDATE_FORMAT"

    return-object v0

    :pswitch_1
    const-string v0, "PLAYER_UPDATE_MUTED"

    return-object v0

    :pswitch_2
    const-string v0, "PLAYER_UPDATE_PORT_ID"

    return-object v0

    :pswitch_3
    const-string v0, "PLAYER_UPDATE_DEVICE_ID"

    return-object v0

    :pswitch_4
    const-string v0, "PLAYER_STATE_STOPPED"

    return-object v0

    :pswitch_5
    const-string v0, "PLAYER_STATE_PAUSED"

    return-object v0

    :pswitch_6
    const-string v0, "PLAYER_STATE_STARTED"

    return-object v0

    :pswitch_7
    const-string v0, "PLAYER_STATE_IDLE"

    return-object v0

    :pswitch_8
    const-string v0, "PLAYER_STATE_RELEASED"

    return-object v0

    :pswitch_9
    const-string v0, "PLAYER_STATE_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

.method private blacklist setUpdateableFields(IIILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    iput-object p4, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o toLogFriendlyPlayerState(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "unknown player state - FIXME"

    return-object v0

    :pswitch_0
    const-string v0, "muted updated"

    return-object v0

    :pswitch_1
    const-string v0, "port updated"

    return-object v0

    :pswitch_2
    const-string v0, "device updated"

    return-object v0

    :pswitch_3
    const-string v0, "stopped"

    return-object v0

    :pswitch_4
    const-string v0, "paused"

    return-object v0

    :pswitch_5
    const-string v0, "started"

    return-object v0

    :pswitch_6
    const-string v0, "idle"

    return-object v0

    :pswitch_7
    const-string v0, "released"

    return-object v0

    :pswitch_8
    const-string v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

.method public static greylist-max-o toLogFriendlyPlayerType(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown player type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - FIXME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "external proxy"

    return-object v0

    :pswitch_2
    const-string v0, "hardware source"

    return-object v0

    :pswitch_3
    const-string v0, "AAudio"

    return-object v0

    :pswitch_4
    const-string v0, "OpenSL ES AudioPlayer (URI/FD)"

    return-object v0

    :pswitch_5
    const-string v0, "OpenSL ES AudioPlayer (Buffer Queue)"

    return-object v0

    :pswitch_6
    const-string v0, "android.media.SoundPool"

    return-object v0

    :pswitch_7
    const-string v0, "android.media.MediaPlayer"

    return-object v0

    :pswitch_8
    const-string v0, "android.media.AudioTrack"

    return-object v0

    :pswitch_9
    const-string v0, "unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/media/AudioPlaybackConfiguration;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;
    .locals 2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getChannelMask()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-static {v1}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getClientPid()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    return v0
.end method

.method public whitelist getClientUid()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    return v0
.end method

.method greylist-max-o getIPlayer()Landroid/media/IPlayer;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public whitelist getMutedBy()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getPlayerInterfaceId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method public whitelist getPlayerProxy()Landroid/media/PlayerProxy;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/media/PlayerProxy;

    invoke-direct {v1, p0}, Landroid/media/PlayerProxy;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public whitelist getPlayerState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    return v0
.end method

.method public whitelist getPlayerType()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    return v0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getSampleRate()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSessionId()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return v0
.end method

.method public blacklist handleFormatEvent(Landroid/media/AudioPlaybackConfiguration$FormatInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v1, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist handleMutedEvent(I)Z
    .locals 2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist handleSessionIdEvent(I)Z
    .locals 2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist handleStateEvent(II)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    :try_start_0
    iget v5, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    if-eq v5, p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move v0, v5

    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    if-ne p1, v4, :cond_5

    :cond_2
    if-nez v0, :cond_3

    iget v4, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    if-eq v4, p2, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    move v0, v2

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    :cond_5
    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    :cond_6
    monitor-exit v1

    return v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o init()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->monitorDeath()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist isActive()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->isMuteAffectingActiveState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist isMuted()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isSpatialized()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget-boolean v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist semGetClientPid()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v0

    return v0
.end method

.method public whitelist semGetClientUid()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    return v0
.end method

.method public whitelist semGetPlayerState()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v0

    return v0
.end method

.method public whitelist semGetPlayerType()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "AudioPlaybackConfiguration piid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessionId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mutedState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-nez v2, :cond_0

    const-string v2, "none "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const-string v2, "master "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string v2, "streamVolume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    const-string v2, "streamMute "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    const-string v2, "appOps "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    const-string v2, "clientVolume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    const-string v2, "volumeShaper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_0
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v3, p1, v2}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->writeToParcel(Landroid/os/Parcel;I)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
