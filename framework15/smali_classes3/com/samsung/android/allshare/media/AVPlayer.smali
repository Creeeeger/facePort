.class public abstract Lcom/samsung/android/allshare/media/AVPlayer;
.super Lcom/samsung/android/allshare/Device;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    }
.end annotation


# direct methods
.method protected constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V
.end method

.method public abstract blacklist getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist getMediaInfo()V
.end method

.method public abstract whitelist getMute()V
.end method

.method public abstract blacklist getPlayPosition()V
.end method

.method public abstract whitelist getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
.end method

.method public abstract blacklist getState()V
.end method

.method public abstract whitelist getVolume()V
.end method

.method public abstract blacklist isRedirectSupportable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist isSupport360View()Z
.end method

.method public abstract whitelist isSupportAspectRatio()Z
.end method

.method public abstract blacklist isSupportAudio()Z
.end method

.method public abstract whitelist isSupportCaptionControl()Z
.end method

.method public abstract whitelist isSupportDynamicBuffering()Z
.end method

.method public abstract blacklist isSupportRedirect()Z
.end method

.method public abstract whitelist isSupportVideo()Z
.end method

.method public abstract whitelist move360View(FF)V
.end method

.method public abstract whitelist pause()V
.end method

.method public abstract whitelist play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
.end method

.method public abstract whitelist prepare(Lcom/samsung/android/allshare/Item;)V
.end method

.method public abstract whitelist requestAspectRatioState()V
.end method

.method public abstract whitelist requestCaptionState()V
.end method

.method public abstract whitelist reset360View()V
.end method

.method public abstract whitelist resume()V
.end method

.method public abstract whitelist seek(J)V
.end method

.method public abstract whitelist setAspectRatio(Ljava/lang/String;)V
.end method

.method public abstract blacklist setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
.end method

.method public abstract whitelist setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V
.end method

.method public abstract whitelist setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V
.end method

.method public abstract whitelist setMute(Z)V
.end method

.method public abstract whitelist setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
.end method

.method public abstract blacklist setVolume(I)V
.end method

.method public abstract whitelist setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
.end method

.method public abstract whitelist skipDynamicBuffering()V
.end method

.method public abstract whitelist stop()V
.end method

.method public abstract whitelist zoom360View(F)V
.end method
