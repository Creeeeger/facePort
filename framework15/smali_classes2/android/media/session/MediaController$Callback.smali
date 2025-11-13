.class public abstract Landroid/media/session/MediaController$Callback;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public whitelist onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 0

    return-void
.end method

.method public whitelist onQueueChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public whitelist onSessionDestroyed()V
    .locals 0

    return-void
.end method

.method public whitelist onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
