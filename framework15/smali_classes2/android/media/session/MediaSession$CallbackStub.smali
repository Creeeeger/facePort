.class public Landroid/media/session/MediaSession$CallbackStub;
.super Landroid/media/session/ISessionCallback$Stub;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackStub"
.end annotation


# instance fields
.field private greylist-max-o mMediaSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/session/MediaSession;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/session/ISessionCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static blacklist createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 1

    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public blacklist onAdjustVolume(Ljava/lang/String;III)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchAdjustVolume(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V

    :cond_0
    return-void
.end method

.method public blacklist onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5, p6}, Landroid/media/session/MediaSession;->dispatchCommand(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    :cond_0
    return-void
.end method

.method public blacklist onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchCustomAction(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onFastForward(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchFastForward(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .locals 3

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz p6, :cond_0

    invoke-virtual {p6, p5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    throw v2

    :cond_1
    :goto_0
    if-eqz p6, :cond_2

    invoke-virtual {p6, p5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public blacklist onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public blacklist onNext(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchNext(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    :cond_0
    return-void
.end method

.method public blacklist onPause(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchPause(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    :cond_0
    return-void
.end method

.method public blacklist onPlay(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchPlay(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    :cond_0
    return-void
.end method

.method public blacklist onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPlayFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onPrepare(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchPrepare(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    :cond_0
    return-void
.end method

.method public blacklist onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    nop

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPrepareFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    nop

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPrepareFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchPrepareFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onPrevious(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchPrevious(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    :cond_0
    return-void
.end method

.method public blacklist onRate(Ljava/lang/String;IILandroid/media/Rating;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/media/Rating;)V

    :cond_0
    return-void
.end method

.method public blacklist onRewind(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchRewind(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    :cond_0
    return-void
.end method

.method public blacklist onSeekTo(Ljava/lang/String;IIJ)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchSeekTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V

    :cond_0
    return-void
.end method

.method public blacklist onSetPlaybackSpeed(Ljava/lang/String;IIF)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    nop

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchSetPlaybackSpeed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;F)V

    :cond_0
    return-void
.end method

.method public blacklist onSetVolumeTo(Ljava/lang/String;III)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/media/session/MediaSession;->dispatchSetVolumeTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V

    :cond_0
    return-void
.end method

.method public blacklist onSkipToTrack(Ljava/lang/String;IIJ)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/media/session/MediaSession;->dispatchSkipToItem(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V

    :cond_0
    return-void
.end method

.method public blacklist onStop(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->dispatchStop(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    :cond_0
    return-void
.end method
