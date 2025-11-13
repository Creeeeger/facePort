.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method
