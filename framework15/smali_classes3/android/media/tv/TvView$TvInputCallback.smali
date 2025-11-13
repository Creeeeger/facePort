.class public abstract Landroid/media/tv/TvView$TvInputCallback;
.super Ljava/lang/Object;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAitInfoUpdated(Ljava/lang/String;Landroid/media/tv/AitInfo;)V
    .locals 0

    return-void
.end method

.method public whitelist onAudioPresentationSelected(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public whitelist onAudioPresentationsChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onAvailableSpeeds(Ljava/lang/String;[F)V
    .locals 0

    return-void
.end method

.method public whitelist onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public whitelist onConnectionFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onContentAllowed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V
    .locals 0

    return-void
.end method

.method public whitelist onCueingMessageAvailability(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public whitelist onDisconnected(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist onSignalStrengthUpdated(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeShiftMode(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onTracksChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public whitelist onTvMessage(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onVideoAvailable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist onVideoFreezeUpdated(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public whitelist onVideoSizeChanged(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public whitelist onVideoUnavailable(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
