.class public Lcom/samsung/android/media/fmradio/SemFmEventListener;
.super Ljava/lang/Object;
.source "SemFmEventListener.java"


# static fields
.field private static final blacklist EVENT_AF_RECEIVED:I = 0xe

.field private static final blacklist EVENT_AF_STARTED:I = 0xd

.field private static final blacklist EVENT_CHANNEL_FOUND:I = 0x1

.field private static final blacklist EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final blacklist EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final blacklist EVENT_OFF:I = 0x6

.field private static final blacklist EVENT_ON:I = 0x5

.field private static final blacklist EVENT_PIECC_EVENT:I = 0x12

.field private static final blacklist EVENT_RDS_DISABLED:I = 0xc

.field private static final blacklist EVENT_RDS_ENABLED:I = 0xb

.field private static final blacklist EVENT_RDS_EVENT:I = 0xa

.field private static final blacklist EVENT_REC_FINISH:I = 0x11

.field private static final blacklist EVENT_RTPLUS_EVENT:I = 0x10

.field private static final blacklist EVENT_SCAN_FINISHED:I = 0x3

.field private static final blacklist EVENT_SCAN_STARTED:I = 0x2

.field private static final blacklist EVENT_SCAN_STOPPED:I = 0x4

.field private static final blacklist EVENT_TUNE:I = 0x7

.field private static final blacklist EVENT_VOLUME_LOCK:I = 0xf


# instance fields
.field blacklist callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

.field blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;-><init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;-><init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public whitelist onAlternateFrequencyReceived(J)V
    .locals 0

    return-void
.end method

.method public whitelist onAlternateFrequencyStarted()V
    .locals 0

    return-void
.end method

.method public whitelist onChannelFound(J)V
    .locals 0

    return-void
.end method

.method public whitelist onHeadsetConnected()V
    .locals 0

    return-void
.end method

.method public whitelist onHeadsetDisconnected()V
    .locals 0

    return-void
.end method

.method public whitelist onProgrammeIdentificationExtendedCountryCodesReceived(II)V
    .locals 0

    return-void
.end method

.method public whitelist onRadioDataSystemDisabled()V
    .locals 0

    return-void
.end method

.method public whitelist onRadioDataSystemEnabled()V
    .locals 0

    return-void
.end method

.method public whitelist onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRadioDisabled(I)V
    .locals 0

    return-void
.end method

.method public whitelist onRadioEnabled()V
    .locals 0

    return-void
.end method

.method public whitelist onRadioTextPlusReceived(IIIIII)V
    .locals 0

    return-void
.end method

.method public whitelist onRecordingFinished()V
    .locals 0

    return-void
.end method

.method public whitelist onScanFinished([J)V
    .locals 0

    return-void
.end method

.method public whitelist onScanStarted()V
    .locals 0

    return-void
.end method

.method public whitelist onScanStopped([J)V
    .locals 0

    return-void
.end method

.method public whitelist onTuned(J)V
    .locals 0

    return-void
.end method

.method public whitelist onVolumeLocked()V
    .locals 0

    return-void
.end method
