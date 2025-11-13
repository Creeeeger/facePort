.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private greylist-max-o mMediaPlayPauseKeyPending:Z

.field private greylist-max-o mSession:Landroid/media/session/MediaSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o handleMediaPlayPauseKeySingleTapIfPending()V
    .locals 11

    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    :goto_0
    const/4 v6, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    const-wide/16 v8, 0x204

    and-long/2addr v8, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v0

    :goto_2
    const-wide/16 v9, 0x202

    and-long/2addr v9, v4

    cmp-long v2, v9, v2

    if-eqz v2, :cond_4

    move v0, v6

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_3

    :cond_5
    if-nez v7, :cond_6

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public whitelist onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public whitelist onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onFastForward()V
    .locals 0

    return-void
.end method

.method public whitelist onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 12

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.intent.extra.KEY_EVENT"

    const-class v2, Landroid/view/KeyEvent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const-wide/16 v8, 0x20

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_0

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_1

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    goto :goto_1

    :cond_1
    iget-boolean v7, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v11, 0x18

    invoke-virtual {v7, v11}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    and-long v7, v5, v8

    cmp-long v1, v7, v3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_1

    :cond_2
    iput-boolean v10, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    iget-object v3, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v3}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v1, v3, p1, v7, v8}, Landroid/media/session/MediaSession;->dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    :cond_3
    :goto_1
    return v10

    :sswitch_1
    const-wide/16 v7, 0x2

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    return v10

    :sswitch_2
    const-wide/16 v7, 0x4

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    return v10

    :sswitch_3
    const-wide/16 v7, 0x40

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    return v10

    :sswitch_4
    const-wide/16 v7, 0x8

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    return v10

    :sswitch_5
    const-wide/16 v7, 0x10

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    return v10

    :sswitch_6
    and-long v7, v5, v8

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    return v10

    :sswitch_7
    const-wide/16 v7, 0x1

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    return v10

    :cond_4
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x56 -> :sswitch_7
        0x57 -> :sswitch_6
        0x58 -> :sswitch_5
        0x59 -> :sswitch_4
        0x5a -> :sswitch_3
        0x7e -> :sswitch_2
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public whitelist onPause()V
    .locals 0

    return-void
.end method

.method public whitelist onPlay()V
    .locals 0

    return-void
.end method

.method public whitelist onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPrepare()V
    .locals 0

    return-void
.end method

.method public whitelist onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onRewind()V
    .locals 0

    return-void
.end method

.method public whitelist onSeekTo(J)V
    .locals 0

    return-void
.end method

.method public whitelist onSetPlaybackSpeed(F)V
    .locals 0

    return-void
.end method

.method public whitelist onSetRating(Landroid/media/Rating;)V
    .locals 0

    return-void
.end method

.method public whitelist onSkipToNext()V
    .locals 0

    return-void
.end method

.method public whitelist onSkipToPrevious()V
    .locals 0

    return-void
.end method

.method public whitelist onSkipToQueueItem(J)V
    .locals 0

    return-void
.end method

.method public whitelist onStop()V
    .locals 0

    return-void
.end method
