.class public final Landroid/hardware/hdmi/HdmiAudioSystemClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiAudioSystemClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiAudioSystemClient$SetSystemAudioModeCallback;
    }
.end annotation


# static fields
.field private static final blacklist REPORT_AUDIO_STATUS_INTERVAL_MS:I = 0x1f4

.field private static final blacklist TAG:Ljava/lang/String; = "HdmiAudioSystemClient"


# instance fields
.field private blacklist mCanSendAudioStatus:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastIsMute:Z

.field private blacklist mLastMaxVolume:I

.field private blacklist mLastVolume:I

.field private blacklist mPendingReportAudioStatus:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastIsMute(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastIsMute:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastMaxVolume(Landroid/hardware/hdmi/HdmiAudioSystemClient;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastMaxVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastVolume(Landroid/hardware/hdmi/HdmiAudioSystemClient;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingReportAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCanSendAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingReportAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/hdmi/IHdmiControlService;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist getDeviceType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public blacklist sendReportAudioStatusCecCommand(ZIIZ)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->reportAudioStatus(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastVolume:I

    iput p3, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastMaxVolume:I

    iput-boolean p4, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastIsMute:Z

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->reportAudioStatus(IIIZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;-><init>(Landroid/hardware/hdmi/HdmiAudioSystemClient;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    :goto_2
    return-void
.end method

.method public blacklist setSystemAudioMode(ZLandroid/hardware/hdmi/HdmiAudioSystemClient$SetSystemAudioModeCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist setSystemAudioModeOnForAudioOnlySource()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioModeOnForAudioOnlySource()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HdmiAudioSystemClient"

    const-string v2, "Failed to set System Audio Mode on for Audio Only source"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
