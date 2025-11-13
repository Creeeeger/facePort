.class public interface abstract Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
.super Ljava/lang/Object;
.source "PlaylistPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/PlaylistPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlaylistPlayerPlaybackResponseListener"
.end annotation


# virtual methods
.method public abstract blacklist onGetPlayPositionResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onNextResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onPreviousResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onSeekResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method
