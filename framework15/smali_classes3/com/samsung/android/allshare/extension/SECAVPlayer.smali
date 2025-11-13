.class public Lcom/samsung/android/allshare/extension/SECAVPlayer;
.super Lcom/samsung/android/allshare/media/AVPlayer;
.source "SECAVPlayer.java"

# interfaces
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/SECAVPlayer$State;,
        Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;,
        Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;,
        Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    }
.end annotation


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "SECAVPlayer"


# instance fields
.field private blacklist mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

.field private blacklist mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

.field private blacklist mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

.field private blacklist mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field blacklist mChangeMute:Z

.field private blacklist mHandlerPlayInfo:Landroid/os/Handler;

.field private blacklist mIsPlayInfoThreadRunning:Z

.field private blacklist mIsSubscriberRequested:Z

.field private blacklist mNotifyStopRunnable:Ljava/lang/Runnable;

.field blacklist mRequestChangeMute:Z

.field blacklist mRequestVolume:Z

.field private blacklist mRunnablePlayInfo:Ljava/lang/Runnable;

.field private blacklist mSECAvPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field private blacklist mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

.field private blacklist mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

.field private blacklist mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

.field private blacklist mStopTimer:Landroid/os/Handler;

.field private blacklist mVolumeDelta:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAVPlayer(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAVPlayerPlaybackResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandlerPlayInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPlayInfoThreadRunning(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSubscriberRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunnablePlayInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/extension/SECAVPlayer$State;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSubscriberRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVolumeDelta(Lcom/samsung/android/allshare/extension/SECAVPlayer;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetVolumeDelta(Lcom/samsung/android/allshare/extension/SECAVPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->setVolumeDelta(I)V

    return-void
.end method

.method public constructor whitelist <init>(Lcom/samsung/android/allshare/media/AVPlayer;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/allshare/media/AVPlayer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-direct {v2, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer$State-IA;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECAvPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECAvPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized blacklist guessMeaningOfStopState(Lcom/samsung/android/allshare/ERROR;Z)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v2, "SECAVPLAYER"

    const-string v3, " STOP (not notified)"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v7

    move-wide v5, v7

    :cond_1
    cmp-long v2, v5, v2

    if-gtz v2, :cond_2

    const-string v2, "SECAVPLAYER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mediaDuration : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, 0x0

    const-wide/16 v7, 0x1e

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    const/16 v2, 0xa

    goto :goto_0

    :cond_3
    long-to-double v7, v5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    double-to-int v2, v7

    :goto_0
    :try_start_2
    const-string v3, "SECAVPLAYER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mediaDuration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SECAVPLAYER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " curPos : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    sub-long v7, v5, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    int-to-long v9, v2

    cmp-long v3, v7, v9

    if-gtz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getPlayPosition()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist setVolumeDelta(I)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    add-int/2addr v1, p1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    const/16 v1, 0x64

    :cond_1
    :goto_0
    if-eq p1, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setVolumeDelta - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SECAVPLAYER"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolume(I)V

    :cond_2
    return-void
.end method

.method private blacklist updateCurrentStatus()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$5;->$SwitchMap$com$samsung$android$allshare$media$AVPlayer$AVPlayerState:[I

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist changeMute()V
    .locals 2

    const-string v0, "SECAVPLAYER"

    const-string v1, " changeMute"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMute()V

    :cond_0
    return-void
.end method

.method public whitelist controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V

    return-void
.end method

.method public blacklist getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIconList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastReceivedMediaInfo()Lcom/samsung/android/allshare/media/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastReceivedPlayPosition()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMediaInfo()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMediaInfo()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$3;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMute()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMute()V

    return-void
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlayPosition()V
    .locals 2

    const-string v0, "SECAVPLAYER"

    const-string v1, "@@@getPlayPosition"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayPosition()V

    return-void
.end method

.method public whitelist getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getSecProductP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getState()V
    .locals 2

    const-string v0, "SECAVPlayer"

    const-string v1, "getState is not working(SECAVPlayer)"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist getVolume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    return-void
.end method

.method public blacklist isRedirectSupportable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSeekableOnPaused()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupport360View()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupport360View()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportAspectRatio()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportAspectRatio()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportAudio()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportAudio()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportCaptionControl()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportCaptionControl()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportDynamicBuffering()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportDynamicBuffering()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportRedirect()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportVideo()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isWholeHomeAudio()Z

    move-result v0

    return v0
.end method

.method public whitelist move360View(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->move360View(FF)V

    return-void
.end method

.method protected blacklist notifyOnBuffering()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    const-string v0, "SECAVPLAYER"

    const-string v1, " OnBuffering"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onBuffering()V

    :cond_0
    return-void
.end method

.method protected blacklist notifyOnError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    const-string v0, "SECAVPLAYER"

    const-string v1, " OnError"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onError(Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method protected blacklist notifyOnFinish()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    const-string v0, "SECAVPLAYER"

    const-string v1, " OnFinish"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onFinish()V

    :cond_0
    return-void
.end method

.method protected blacklist notifyOnPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    const-string v0, "SECAVPLAYER"

    const-string v1, " OnPause"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onPause()V

    :cond_0
    return-void
.end method

.method protected blacklist notifyOnPlay()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_1

    const-string v0, "SECAVPLAYER"

    const-string v1, " OnPlay"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onPlay()V

    :cond_1
    return-void
.end method

.method protected blacklist notifyOnProgress(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onProgress(J)V

    :cond_0
    return-void
.end method

.method protected blacklist notifyOnStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    const-string v0, "SECAVPLAYER"

    const-string v1, " OnStop"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onStop()V

    :cond_0
    return-void
.end method

.method public whitelist onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onDeviceChanged(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECAVPLAYER"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$5;->$SwitchMap$com$samsung$android$allshare$media$AVPlayer$AVPlayerState:[I

    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v4

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v6, v2, v3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mcompareAndSetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v2, v4, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FINISHED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnFinish()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnError(Lcom/samsung/android/allshare/ERROR;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnPause()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnPlay()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnBuffering()V

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p2, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnError(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->guessMeaningOfStopState(Lcom/samsung/android/allshare/ERROR;Z)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    nop

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onExtensionEvent(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onExtensionEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECAVPLAYER"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.sec.android.allshare.event.EVENT_RENDERER_ASPECT_RATIO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "event onAspectRatio"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onAspectRatio(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object p3, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Caption;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onExtensionEvent : [caption]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SECAVPlayer"

    invoke-static {v7, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    const-string v3, "com.sec.android.allshare.event.EVENT_RENDERER_CAPTIONS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "event onAvailableCaptions"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v1, v0, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onAvailableCaptions(Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_2

    :cond_4
    const-string v3, "com.sec.android.allshare.event.EVENT_RENDERER_ENABLED_CAPTIONS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "event onEnabledCaptions"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v1, v0, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onEnabledCaptions(Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public whitelist onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p2, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/media/MediaInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V

    :cond_3
    return-void
.end method

.method public whitelist onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p3, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-lez v7, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v3

    :cond_2
    cmp-long v5, p1, v5

    if-eqz v5, :cond_3

    cmp-long v5, p1, v3

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    cmp-long v5, p1, v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v5, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mcompareAndSetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SECAVPLAYER"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnFinish()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_5

    return-void

    :cond_5
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p3, v1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    return-void
.end method

.method public whitelist onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->onDeviceChanged(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    :cond_1
    return-void
.end method

.method public whitelist onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMediaInfo()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    :cond_3
    return-void
.end method

.method public whitelist onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    :cond_1
    return-void
.end method

.method public whitelist onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public whitelist pause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->pause()V

    return-void
.end method

.method public whitelist play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    :cond_0
    const-wide/16 v1, 0x0

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNewPlayState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNewPlayState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v5, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v3, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    const-string v0, "SECAVPLAYER"

    const-string v3, " play"

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    return-void
.end method

.method public whitelist prepare(Lcom/samsung/android/allshare/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->prepare(Lcom/samsung/android/allshare/Item;)V

    return-void
.end method

.method public whitelist requestAspectRatioState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->requestAspectRatioState()V

    return-void
.end method

.method public whitelist requestCaptionState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->requestCaptionState()V

    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->requestMobileToTV(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist reset360View()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->reset360View()V

    return-void
.end method

.method public whitelist resume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->resume()V

    return-void
.end method

.method public whitelist seek(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->seek(J)V

    return-void
.end method

.method public whitelist setAspectRatio(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
    .locals 0

    return-void
.end method

.method public whitelist setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V
    .locals 0

    return-void
.end method

.method public whitelist setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    return-void
.end method

.method public whitelist setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setMute(Z)V

    return-void
.end method

.method public whitelist setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    return-void
.end method

.method public whitelist setSECAVPlayerExtensionEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    return-void
.end method

.method public whitelist setSmartAVPlayerEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    return-void
.end method

.method public blacklist setVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolume(I)V

    return-void
.end method

.method public whitelist setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    return-void
.end method

.method public whitelist skipDynamicBuffering()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->skipDynamicBuffering()V

    return-void
.end method

.method public whitelist stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    const-string v0, "SECAVPLAYER"

    const-string v1, " stop"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->stop()V

    return-void
.end method

.method public whitelist volumeDown()V
    .locals 2

    const-string v0, "SECAVPLAYER"

    const-string v1, " volumeDown"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    :cond_0
    return-void
.end method

.method public whitelist volumeUp()V
    .locals 2

    const-string v0, "SECAVPLAYER"

    const-string v1, " volumeUp"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    :cond_0
    return-void
.end method

.method public whitelist zoom360View(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->zoom360View(F)V

    return-void
.end method
