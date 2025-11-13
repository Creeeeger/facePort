.class public final Lcom/android/systemui/wallpaper/engines/video/VideoController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

.field public final mCallback:Lcom/android/systemui/wallpaper/engines/video/VideoController$Callback;

.field public final mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

.field public final mHandler:Landroid/os/Handler;

.field public mIsReleased:Z

.field public final mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

.field public mSurface:Landroid/view/Surface;

.field public final mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;Landroid/os/Handler;Lcom/android/systemui/wallpaper/engines/video/VideoController$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageWallpaper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mWhich:I

    const-string v2, "[VideoController]"

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCallback:Lcom/android/systemui/wallpaper/engines/video/VideoController$Callback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iput-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    return-void
.end method


# virtual methods
.method public final createPlayerSession()Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "createPlayerSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/wallpaper/engines/video/VideoController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$1;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;Landroid/os/Handler;Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final dispatchCommands()V
    .locals 7

    const-string v0, "dispatchCommands: "

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enqueued=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->listEnqueued()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->peekFirstCommand()Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "dispatchCommands: unexpected cmd : "

    const-string v2, "dispatchCommands: perform seek. time="

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v3

    :try_start_1
    iget-object v4, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;->mAction:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;->mAction:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "dispatchCommands: no active session to pause & seek to first frame"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceAndPlayerReady()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseAndSeekToFirstFrameCommand;

    iget-boolean v2, v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseAndSeekToFirstFrameCommand;->mAllowRelease:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->pause(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {v1, v5}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->seekTo(I)V

    monitor-exit v3

    goto/16 :goto_1

    :cond_3
    monitor-exit v3

    goto/16 :goto_4

    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$SeekCommand;

    iget v1, v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$SeekCommand;->mSeekTime:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-nez v4, :cond_6

    if-nez v1, :cond_5

    monitor-exit v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->createPlayerSession()Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-nez v1, :cond_7

    monitor-exit v3

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceAndPlayerReady()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->seekTo(I)V

    monitor-exit v3

    goto :goto_1

    :cond_7
    monitor-exit v3

    goto/16 :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "dispatchCommands: no active session to pause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceAndPlayerReady()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseCommand;

    iget-boolean v2, v2, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseCommand;->mAllowRelease:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->pause(Z)V

    monitor-exit v3

    goto :goto_1

    :cond_a
    monitor-exit v3

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->createPlayerSession()Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-nez v1, :cond_e

    monitor-exit v3

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceAndPlayerReady()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->play()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatchCommands: head="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> consumed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    monitor-enter v0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->peekFirstCommand()Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_d
    :goto_2
    monitor-exit v0

    goto/16 :goto_0

    :goto_3
    monitor-exit v0

    throw p0

    :cond_e
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchCommands: head="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> will consume later"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_5
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final isSurfaceAndPlayerReady()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->isSurfaceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->isPlayerReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSurfaceReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mSurface:Landroid/view/Surface;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pause(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string p1, "pause: released"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mCommandQueue:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;

    new-instance v1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseCommand;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseCommand;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandQueue;->enqueueCommand(Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController;->dispatchCommands()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
