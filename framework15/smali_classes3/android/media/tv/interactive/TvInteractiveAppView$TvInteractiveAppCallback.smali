.class public abstract Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;
.super Ljava/lang/Object;
.source "TvInteractiveAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInteractiveAppCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBiInteractiveAppCreated(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onPlaybackCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestAvailableSpeeds(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist onRequestCertificate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestCurrentChannelLcn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestCurrentChannelUri(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestCurrentTvInputId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestCurrentVideoBounds(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onRequestSelectedTrackInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestStartRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestStopRecording(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestStreamVolume(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestTimeShiftMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestTrackInfoList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestTvRecordingInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRequestTvRecordingInfoList(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onSetTvRecordingInfo(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .locals 0

    return-void
.end method

.method public whitelist onSetVideoBounds(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public whitelist onStateChanged(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public whitelist onTeletextAppStateChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeShiftCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
