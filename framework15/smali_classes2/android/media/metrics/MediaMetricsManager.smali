.class public final Landroid/media/metrics/MediaMetricsManager;
.super Ljava/lang/Object;
.source "MediaMetricsManager.java"


# static fields
.field public static final whitelist INVALID_TIMESTAMP:J = -0x1L

.field private static final blacklist TAG:Ljava/lang/String; = "MediaMetricsManager"


# instance fields
.field private blacklist mService:Landroid/media/metrics/IMediaMetricsManager;

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/media/metrics/IMediaMetricsManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iput p2, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    return-void
.end method


# virtual methods
.method public whitelist createBundleSession()Landroid/media/metrics/BundleSession;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getBundleSessionId(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/metrics/BundleSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/BundleSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createEditingSession()Landroid/media/metrics/EditingSession;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getEditingSessionId(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/metrics/EditingSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/EditingSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createPlaybackSession()Landroid/media/metrics/PlaybackSession;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getPlaybackSessionId(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/metrics/PlaybackSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/PlaybackSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createRecordingSession()Landroid/media/metrics/RecordingSession;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getRecordingSessionId(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/metrics/RecordingSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/RecordingSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createTranscodingSession()Landroid/media/metrics/TranscodingSession;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getTranscodingSessionId(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/metrics/TranscodingSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/TranscodingSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist releaseSessionId(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/metrics/IMediaMetricsManager;->releaseSessionId(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
