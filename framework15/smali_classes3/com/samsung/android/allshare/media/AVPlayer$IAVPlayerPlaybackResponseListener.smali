.class public interface abstract Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
.super Ljava/lang/Object;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/AVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAVPlayerPlaybackResponseListener"
.end annotation


# virtual methods
.method public abstract onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method
