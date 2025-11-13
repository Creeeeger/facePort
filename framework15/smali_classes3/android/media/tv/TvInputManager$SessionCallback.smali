.class public abstract Landroid/media/tv/TvInputManager$SessionCallback;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAitInfoUpdated(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/AitInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist onAudioPresentationSelected(Landroid/media/tv/TvInputManager$Session;II)V
    .locals 0

    return-void
.end method

.method public blacklist onAudioPresentationsChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist onAvailableSpeeds(Landroid/media/tv/TvInputManager$Session;[F)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .locals 0

    return-void
.end method

.method public blacklist onCueingMessageAvailability(Landroid/media/tv/TvInputManager$Session;Z)V
    .locals 0

    return-void
.end method

.method greylist-max-o onError(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .locals 0

    return-void
.end method

.method greylist-max-o onRecordingStopped(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    return-void
.end method

.method public blacklist onSignalStrengthUpdated(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 0

    return-void
.end method

.method public blacklist onTimeShiftMode(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public greylist-max-o onTuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public blacklist onTvMessage(Landroid/media/tv/TvInputManager$Session;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    return-void
.end method

.method public blacklist onVideoFreezeUpdated(Landroid/media/tv/TvInputManager$Session;Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0

    return-void
.end method
