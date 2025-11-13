.class public abstract Lcom/samsung/android/allshare/media/PlaylistPlayer;
.super Ljava/lang/Object;
.source "PlaylistPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;,
        Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;,
        Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public abstract blacklist getPlayPosition()V
.end method

.method public abstract blacklist isSeekable()Z
.end method

.method public abstract blacklist isSupportAudio()Z
.end method

.method public abstract blacklist isSupportImage()Z
.end method

.method public abstract blacklist isSupportNavigateInPause()Z
.end method

.method public abstract blacklist isSupportSetAutoFlipMode()Z
.end method

.method public abstract blacklist isSupportVideo()Z
.end method

.method public abstract blacklist next()V
.end method

.method public abstract blacklist pause()V
.end method

.method public abstract blacklist play(Lcom/samsung/android/allshare/media/Playlist;I)V
.end method

.method public abstract blacklist previous()V
.end method

.method public abstract blacklist resume()V
.end method

.method public abstract blacklist seek(I)V
.end method

.method public abstract blacklist setAutoFlipMode(Z)V
.end method

.method public abstract blacklist setPlaybackResponseListener(Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;)V
.end method

.method public abstract blacklist setPlaylistPlayerEventListener(Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;)V
.end method

.method public abstract blacklist setQuickNavigate(Z)V
.end method

.method public abstract blacklist stop()V
.end method
