.class public interface abstract Landroid/support/v4/media/session/IMediaSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.end method

.method public abstract addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V
.end method

.method public abstract adjustVolume(II)V
.end method

.method public abstract fastForward()V
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getFlags()J
.end method

.method public abstract getLaunchPendingIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
.end method

.method public abstract getQueue()V
.end method

.method public abstract getQueueTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getRatingType()V
.end method

.method public abstract getRepeatMode()V
.end method

.method public abstract getSessionInfo()Landroid/os/Bundle;
.end method

.method public abstract getShuffleMode()V
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
.end method

.method public abstract isCaptioningEnabled()V
.end method

.method public abstract isTransportControlEnabled()Z
.end method

.method public abstract next()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playFromMediaId(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract playFromSearch(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract prepare()V
.end method

.method public abstract prepareFromMediaId(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract prepareFromSearch(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract previous()V
.end method

.method public abstract rate(Landroid/support/v4/media/RatingCompat;)V
.end method

.method public abstract rateWithExtras(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
.end method

.method public abstract registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
.end method

.method public abstract removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.end method

.method public abstract removeQueueItemAt(I)V
.end method

.method public abstract rewind()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
.end method

.method public abstract sendCustomAction(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract sendMediaButton(Landroid/view/KeyEvent;)Z
.end method

.method public abstract setCaptioningEnabled(Z)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract setVolumeTo(II)V
.end method

.method public abstract skipToQueueItem(J)V
.end method

.method public abstract stop()V
.end method

.method public abstract unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
.end method
