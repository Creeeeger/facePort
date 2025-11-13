.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallbackFwk:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MediaControllerCallbackApi21;

.field public mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

.field public mIControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MediaControllerCallbackApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MediaControllerCallbackApi21;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackFwk:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MediaControllerCallbackApi21;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILandroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    return-void
.end method

.method public final postToHandler(ILandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->mRegistered:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->mRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method
