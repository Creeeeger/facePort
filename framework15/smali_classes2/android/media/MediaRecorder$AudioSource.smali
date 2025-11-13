.class public final Landroid/media/MediaRecorder$AudioSource;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSource"
.end annotation


# static fields
.field private static final blacklist AUDIOSOURCE_OFFSET:I = 0xa

.field public static final greylist-max-o AUDIO_SOURCE_INVALID:I = -0x1

.field public static final whitelist CAMCORDER:I = 0x5

.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist ECHO_REFERENCE:I = 0x7cd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HOTWORD:I = 0x7cf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIC:I = 0x1

.field public static final whitelist RADIO_TUNER:I = 0x7ce
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOTE_SUBMIX:I = 0x8

.field public static final blacklist SEC_2MIC_SVOICE_DRIVING:I = 0xe

.field public static final blacklist SEC_2MIC_SVOICE_NORMAL:I = 0xf

.field public static final blacklist SEC_BARGEIN_DRIVING:I = 0x10

.field public static final blacklist SEC_BEAMFORMING:I = 0x12

.field public static final blacklist SEC_CAMCORDER:I = 0x11

.field public static final blacklist SEC_FM_RX:I = 0xb

.field public static final blacklist SEC_PLAYBACK_RECORD:I = 0x13

.field public static final blacklist SEC_VOICE_COMMUNICATION:I = 0xd

.field public static final blacklist SEC_VOICE_RECOGNITION:I = 0xc

.field public static final blacklist SEM_2MIC_SVOICE_DRIVING:I = 0x5

.field public static final blacklist SEM_AUDIOSOURCE_MAX:I = 0x13

.field public static final whitelist SEM_BARGE_IN_DRIVING:I = 0x7

.field public static final whitelist SEM_BEAMFORMING:I = 0x9

.field public static final whitelist SEM_CAMCORDER:I = 0x8

.field public static final whitelist SEM_DUAL_MICROPHONE_VOICE_RECOGNITION:I = 0x6

.field public static final whitelist SEM_FM_RX:I = 0x1

.field public static final whitelist SEM_HOTWORD:I = 0x7cf

.field public static final whitelist SEM_PLAYBACK_RECORD:I = 0xc

.field public static final blacklist SEM_VOICE_COMMUNICATION:I = 0x4

.field public static final whitelist SEM_VOICE_RECOGNITION:I = 0x3

.field public static final whitelist ULTRASOUND:I = 0x7d0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNPROCESSED:I = 0x9

.field public static final whitelist VOICE_CALL:I = 0x4

.field public static final whitelist VOICE_COMMUNICATION:I = 0x7

.field public static final whitelist VOICE_DOWNLINK:I = 0x3

.field public static final whitelist VOICE_PERFORMANCE:I = 0xa

.field public static final whitelist VOICE_RECOGNITION:I = 0x6

.field public static final whitelist VOICE_UPLINK:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaRecorder$AudioSource;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
