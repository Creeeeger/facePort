.class public Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;
.super Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILandroid/os/Bundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILandroid/os/Bundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILandroid/os/Bundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILandroid/os/Bundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILandroid/os/Bundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 8

    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v7, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget v2, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v6, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0, v7}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILandroid/os/Bundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
