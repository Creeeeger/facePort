.class public final Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sNextId:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAutoReleaseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;

.field public final mCallback:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$Callback;

.field public final mHandler:Landroid/os/Handler;

.field public final mId:I

.field public mIsNeverDrawnAtSurface:Z

.field public final mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

.field public mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field public mPlayerState:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;Landroid/os/Handler;Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$Callback;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mIsNeverDrawnAtSurface:Z

    new-instance v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mAutoReleaseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;

    sget v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->sNextId:I

    iput v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->sNextId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImageWallpaper_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "[VideoController.Session#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    iput-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    sget-object v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->RELEASED:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    iput-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayerState:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mCallback:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$Callback;

    const-string p2, "createAndInitMediaPlayer"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p2}, Lcom/samsung/android/media/SemMediaPlayer;-><init>()V

    const p3, 0x88bc

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    const p3, 0x9088

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    new-instance p3, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance p3, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, v3, v4}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;J)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    sget-object p3, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->INITIALIZING:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    invoke-virtual {p0, p3}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->setPlayerState(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;)V

    iget-object p1, p1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;->setSourceToPlayer(Lcom/samsung/android/media/SemMediaPlayer;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "createAndInitMediaPlayer: failed to init the video"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/media/SemMediaPlayer;->release()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->setPlayerState(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;)V

    const/4 p2, 0x0

    :cond_1
    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-void
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 5

    const-string v0, "getCurrentPosition: player is null. state=["

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->isReleased()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string v0, "getCurrentPosition: released state"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentVideoFrame()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->isReleased()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentVideoFrame: player not initialized"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentVideoFrame: player is null"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string v2, "getCurrentVideoFrame: video is playing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->pause()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->start()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPlayerReady()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayerState:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    sget-object v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->PLAYER_READY:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isReleased()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayerState:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    sget-object v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->RELEASED:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSurfaceAndPlayerReady(Landroid/view/Surface;)V
    .locals 4

    const-string v0, "onSurfaceAndPlayerReady : failed setLooping. "

    const-string v1, "onSurfaceAndPlayerReady: player is null. state=["

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setVideoScalingMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const v3, 0x9089

    invoke-virtual {p1, v3, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", e="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final pause(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->isPlayerReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string v2, "pause: player not ready yet"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mAutoReleaseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mAutoReleaseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string v1, "pause: SemMediaPlayer.pause"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->pause()V

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final play()V
    .locals 5

    const-string v0, "play: player not ready yet. state=["

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->isPlayerReady()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mAutoReleaseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string v2, "play: SemMediaPlayer.start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mIsNeverDrawnAtSurface:Z

    :cond_1
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final release()V
    .locals 5

    const-string/jumbo v0, "release: e="

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "release: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mAutoReleaseDispatcher:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "release: SemMediaPlayer.release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->RELEASED:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->setPlayerState(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final seekTo(I)V
    .locals 6

    const-string/jumbo v0, "seekTo: SemMediaPlayer.seekTo("

    const-string/jumbo v1, "seekTo: player is null. state=["

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->getCurrentPosition()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mIsNeverDrawnAtSurface:Z

    if-nez v5, :cond_2

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "seekTo: not need to seek"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->SEEKING:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->setPlayerState(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V

    monitor-exit v1

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setPlayerState(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayerState:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayerState:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setPlayerState: state changed. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mCallback:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$Callback;

    check-cast v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$1;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$1;->this$0:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    const-string v3, "onStateChanged: non-active session state changed. curActive="

    iget-object v4, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v4

    :try_start_1
    iget-object v5, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-eqz v5, :cond_1

    if-eq p0, v5, :cond_1

    iget-object p1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stateChanged="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eq p0, v2, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    goto :goto_5

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_2
    iput-object p1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-exit p0

    goto :goto_5

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceAndPlayerReady()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->INITIALIZING:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    if-ne v1, p0, :cond_5

    iget-object p0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCallback:Lcom/android/systemui/wallpaper/engines/video/VideoController$Callback;

    check-cast p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;->onSurfaceAndPlayerReady()V

    iget-object p0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter p0

    :try_start_3
    iget-object p1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-eqz p1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->onSurfaceAndPlayerReady(Landroid/view/Surface;)V

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->dispatchCommands()V

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceReady()Z

    move-result p0

    if-nez p0, :cond_7

    iget-object p0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string p1, "onStateChanged: surface is not ready yet"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_4
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_7
    :goto_5
    return-void

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mPlayerState:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
