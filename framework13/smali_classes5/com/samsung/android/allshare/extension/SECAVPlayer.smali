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
        Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;,
        Lcom/samsung/android/allshare/extension/SECAVPlayer$State;,
        Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;,
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
    .param p1, "player"    # Lcom/samsung/android/allshare/media/AVPlayer;
    .param p2, "context"    # Landroid/content/Context;

    .line 672
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/AVPlayer;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 218
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 220
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    .line 222
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    .line 663
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    .line 665
    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-direct {v2, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer$State-IA;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    .line 726
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    .line 728
    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    .line 743
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 746
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    .line 1207
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    .line 1209
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1211
    new-instance v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$2;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    .line 1760
    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 2001
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 2003
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 2006
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 2136
    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECAvPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 673
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    .line 674
    invoke-virtual {p1, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V

    .line 675
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V

    .line 676
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V

    .line 677
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/media/AVPlayer;->setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V

    .line 678
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECAvPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V

    .line 679
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    .line 680
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    .line 681
    return-void
.end method

.method private declared-synchronized blacklist guessMeaningOfStopState(Lcom/samsung/android/allshare/ERROR;Z)V
    .locals 11
    .param p1, "error"    # Lcom/samsung/android/allshare/ERROR;
    .param p2, "fromEvent"    # Z

    monitor-enter p0

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    .line 688
    .local v0, "curPos":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 689
    const-string v2, "SECAVPLAYER"

    const-string v3, " STOP (not notified)"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    .line 694
    .end local p0    # "this":Lcom/samsung/android/allshare/extension/SECAVPlayer;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v4

    .line 695
    .local v4, "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v5

    .line 699
    .local v5, "mediaDuration":J
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_1

    .line 700
    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v7

    move-wide v5, v7

    .line 702
    :cond_1
    cmp-long v2, v5, v2

    if-gtz v2, :cond_2

    .line 703
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

    .line 704
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    monitor-exit p0

    return-void

    .line 708
    :cond_2
    const/4 v2, 0x0

    .line 710
    .local v2, "endingMargin":I
    const-wide/16 v7, 0x1e

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    .line 711
    const/16 v2, 0xa

    goto :goto_0

    .line 714
    :cond_3
    long-to-double v7, v5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    double-to-int v2, v7

    .line 717
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

    .line 718
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

    .line 719
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    .line 720
    sub-long v7, v5, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    int-to-long v9, v2

    cmp-long v3, v7, v9

    if-gtz v3, :cond_4

    .line 721
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 722
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getPlayPosition()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 724
    :cond_4
    monitor-exit p0

    return-void

    .line 685
    .end local v0    # "curPos":J
    .end local v2    # "endingMargin":I
    .end local v4    # "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    .end local v5    # "mediaDuration":J
    .end local p1    # "error":Lcom/samsung/android/allshare/ERROR;
    .end local p2    # "fromEvent":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist setVolumeDelta(I)V
    .locals 3
    .param p1, "currentVolume"    # I

    .line 2106
    const/4 v0, 0x0

    .line 2108
    .local v0, "setVolume":I
    iget v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    add-int/2addr v1, p1

    .line 2109
    .end local v0    # "setVolume":I
    .local v1, "setVolume":I
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 2111
    if-gez v1, :cond_0

    .line 2112
    const/4 v1, 0x0

    goto :goto_0

    .line 2113
    :cond_0
    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 2114
    const/16 v1, 0x64

    .line 2116
    :cond_1
    :goto_0
    if-eq p1, v1, :cond_2

    .line 2117
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

    .line 2118
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolume(I)V

    .line 2120
    :cond_2
    return-void
.end method

.method private blacklist updateCurrentStatus()V
    .locals 3

    .line 2228
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    if-eqz v0, :cond_0

    .line 2229
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    .line 2231
    .local v0, "state":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$5;->$SwitchMap$com$samsung$android$allshare$media$AVPlayer$AVPlayerState:[I

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2252
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_0

    .line 2249
    :pswitch_0
    goto :goto_0

    .line 2245
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2246
    goto :goto_0

    .line 2241
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2242
    goto :goto_0

    .line 2237
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2238
    goto :goto_0

    .line 2233
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2255
    .end local v0    # "state":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    :cond_0
    :goto_0
    return-void

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
.method public blacklist CreateWHAParty()V
    .locals 1

    .line 2507
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->CreateWHAParty()V

    .line 2508
    return-void
.end method

.method public blacklist GetWHADeviceStatusInfo()V
    .locals 1

    .line 2495
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->GetWHADeviceStatusInfo()V

    .line 2496
    return-void
.end method

.method public blacklist JoinWHAParty(Ljava/lang/String;)V
    .locals 1
    .param p1, "partyID"    # Ljava/lang/String;

    .line 2520
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->JoinWHAParty(Ljava/lang/String;)V

    .line 2521
    return-void
.end method

.method public blacklist LeaveWHAParty()V
    .locals 1

    .line 2533
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->LeaveWHAParty()V

    .line 2534
    return-void
.end method

.method public blacklist SetWHAResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    .line 2484
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->SetWHAResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;)V

    .line 2485
    return-void
.end method

.method public whitelist changeMute()V
    .locals 2

    .line 2128
    const-string v0, "SECAVPLAYER"

    const-string v1, " changeMute"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    .line 2130
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    if-eq v0, v1, :cond_0

    .line 2131
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    .line 2132
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMute()V

    .line 2134
    :cond_0
    return-void
.end method

.method public whitelist controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V
    .locals 1
    .param p1, "operation"    # Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .param p2, "caption"    # Lcom/samsung/android/allshare/Caption;

    .line 2689
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V

    .line 2690
    return-void
.end method

.method public blacklist getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 2747
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    .line 1704
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1712
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    .line 1740
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

    .line 1754
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    if-nez v0, :cond_0

    .line 1755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1757
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastReceivedMediaInfo()Lcom/samsung/android/allshare/media/MediaInfo;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastReceivedPlayPosition()J
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMediaInfo()V
    .locals 4

    .line 1767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 1768
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMediaInfo()V

    .line 1770
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$3;-><init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1786
    return-void
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMute()V
    .locals 1

    .line 1811
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMute()V

    .line 1812
    return-void
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 1

    .line 2224
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    .line 2559
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlayPosition()V
    .locals 2

    .line 1838
    const-string v0, "SECAVPLAYER"

    const-string v1, "@@@getPlayPosition"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayPosition()V

    .line 1840
    return-void
.end method

.method public whitelist getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlaylistPlayer()Lcom/samsung/android/allshare/media/PlaylistPlayer;
    .locals 1

    .line 2418
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getPlaylistPlayer()Lcom/samsung/android/allshare/media/PlaylistPlayer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 2596
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 1

    .line 2568
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 2603
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 2587
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 2581
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getSecProductP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getState()V
    .locals 2

    .line 2403
    const-string v0, "SECAVPlayer"

    const-string v1, "getState is not working(SECAVPlayer)"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    return-void
.end method

.method public whitelist getVolume()V
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    .line 1865
    return-void
.end method

.method public blacklist isRedirectSupportable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2438
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 1

    .line 2542
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSeekableOnPaused()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupport360View()Z
    .locals 1

    .line 2728
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupport360View()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportAspectRatio()Z
    .locals 1

    .line 2715
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportAspectRatio()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportAudio()Z
    .locals 1

    .line 1877
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportAudio()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportCaptionControl()Z
    .locals 1

    .line 2741
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportCaptionControl()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportDynamicBuffering()Z
    .locals 1

    .line 2459
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportDynamicBuffering()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportRedirect()Z
    .locals 1

    .line 2431
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportVideo()Z
    .locals 1

    .line 1889
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportVideo()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 3439
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 1

    .line 2550
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->isWholeHomeAudio()Z

    move-result v0

    return v0
.end method

.method public whitelist move360View(FF)V
    .locals 1
    .param p1, "latitudeOffset"    # F
    .param p2, "longitudeOffset"    # F

    .line 2647
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->move360View(FF)V

    .line 2648
    return-void
.end method

.method protected blacklist notifyOnBuffering()V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 816
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 817
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnBuffering"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onBuffering()V

    .line 820
    :cond_0
    return-void
.end method

.method protected blacklist notifyOnError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 2
    .param p1, "e"    # Lcom/samsung/android/allshare/ERROR;

    .line 898
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 899
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 901
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 902
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnError"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 905
    :cond_0
    return-void
.end method

.method protected blacklist notifyOnFinish()V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 885
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnFinish"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onFinish()V

    .line 888
    :cond_0
    return-void
.end method

.method protected blacklist notifyOnPause()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 858
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 859
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnPause"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onPause()V

    .line 862
    :cond_0
    return-void
.end method

.method protected blacklist notifyOnPlay()V
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 829
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_1

    .line 835
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnPlay"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onPlay()V

    .line 838
    :cond_1
    return-void
.end method

.method protected blacklist notifyOnProgress(J)V
    .locals 1
    .param p1, "pos"    # J

    .line 846
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 847
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onProgress(J)V

    .line 848
    :cond_0
    return-void
.end method

.method protected blacklist notifyOnStop()V
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    if-eqz v0, :cond_0

    .line 871
    const-string v0, "SECAVPLAYER"

    const-string v1, " OnStop"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;->onStop()V

    .line 874
    :cond_0
    return-void
.end method

.method public whitelist onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "aspectRatio"    # Ljava/lang/String;
    .param p2, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 2940
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    .line 2941
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 2942
    :cond_0
    return-void
.end method

.method public whitelist onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;
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

    .line 3430
    .local p1, "availableCaptions":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .local p2, "enabledCaptions":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    .line 3431
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    .line 3433
    :cond_0
    return-void
.end method

.method public whitelist onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 3329
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    .line 3330
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 3331
    :cond_0
    return-void
.end method

.method public whitelist onDeviceChanged(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .param p2, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 2262
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECAVPLAYER"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$5;->$SwitchMap$com$samsung$android$allshare$media$AVPlayer$AVPlayerState:[I

    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2302
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2303
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnError(Lcom/samsung/android/allshare/ERROR;)V

    .line 2304
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2305
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    goto/16 :goto_1

    .line 2274
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_3

    .line 2275
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnPause()V

    goto :goto_1

    .line 2279
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2280
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnPlay()V

    goto :goto_1

    .line 2269
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-eq v0, v1, :cond_3

    .line 2270
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnBuffering()V

    goto :goto_1

    .line 2284
    :pswitch_4
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p2, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2286
    invoke-virtual {p0, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnError(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2288
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-ne v0, v2, :cond_1

    .line 2289
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 2290
    return-void

    .line 2292
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->guessMeaningOfStopState(Lcom/samsung/android/allshare/ERROR;Z)V

    .line 2293
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    goto :goto_0

    .line 2295
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    .line 2298
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2299
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 2300
    nop

    .line 2310
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onExtensionEvent(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
    .locals 8
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExtensionEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECAVPLAYER"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const-string v0, "com.sec.android.allshare.event.EVENT_RENDERER_ASPECT_RATIO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2366
    const-string v0, "event onAspectRatio"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onAspectRatio(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_2

    .line 2369
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2370
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    invoke-static {p2}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2371
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    if-nez v2, :cond_1

    .line 2372
    sget-object p3, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    goto :goto_1

    .line 2374
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

    .line 2375
    .local v4, "caption":Lcom/samsung/android/allshare/Caption;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2376
    .local v5, "captionUri":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2377
    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    .line 2379
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onExtensionEvent : [caption]"

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

    .line 2381
    .end local v4    # "caption":Lcom/samsung/android/allshare/Caption;
    .end local v5    # "captionUri":Ljava/lang/String;
    goto :goto_0

    .line 2383
    :cond_3
    :goto_1
    const-string v3, "com.sec.android.allshare.event.EVENT_RENDERER_CAPTIONS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2384
    const-string v3, "event onAvailableCaptions"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v1, v0, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onAvailableCaptions(Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_2

    .line 2386
    :cond_4
    const-string v3, "com.sec.android.allshare.event.EVENT_RENDERER_ENABLED_CAPTIONS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2387
    const-string v3, "event onEnabledCaptions"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    invoke-interface {v1, v0, p3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;->onEnabledCaptions(Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    .line 2391
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .end local v2    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    :cond_5
    :goto_2
    return-void
.end method

.method public whitelist onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V
    .locals 4
    .param p1, "mediaInfo"    # Lcom/samsung/android/allshare/media/MediaInfo;
    .param p2, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1194
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p2, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1198
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/media/MediaInfo;)V

    goto :goto_1

    .line 1196
    :cond_1
    :goto_0
    return-void

    .line 1201
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsSubscriberRequested:Z

    .line 1203
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1205
    :cond_3
    return-void
.end method

.method public whitelist onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
    .locals 8
    .param p1, "position"    # J
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 991
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    .line 992
    invoke-virtual {p3, v0}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 994
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v2

    .line 998
    .local v2, "mediaDuration":J
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object v0

    .line 999
    .local v0, "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    .line 1000
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v2

    .line 1003
    :cond_2
    cmp-long v4, p1, v4

    if-eqz v4, :cond_3

    cmp-long v4, p1, v2

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    .line 1004
    invoke-static {v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$misNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1005
    iget-object v4, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v4, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 1006
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 1007
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " finish : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SECAVPLAYER"

    invoke-static {v4, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnFinish()V

    .line 1010
    return-void

    .line 1014
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-nez v1, :cond_5

    .line 1015
    return-void

    .line 1017
    :cond_5
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p3, v1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1018
    return-void

    .line 1020
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 1021
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    .line 1022
    return-void
.end method

.method public whitelist onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .param p2, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1662
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    if-ne p2, v0, :cond_0

    .line 1663
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->onDeviceChanged(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V

    .line 1667
    :cond_0
    return-void
.end method

.method public whitelist onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 3037
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    .line 3038
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 3039
    :cond_0
    return-void
.end method

.method public whitelist onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 2
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1583
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_1

    .line 1589
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1590
    :cond_1
    return-void
.end method

.method public whitelist onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V
    .locals 4
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1312
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
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

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getMediaInfo()V

    goto :goto_0

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 1323
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_3

    .line 1324
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1325
    :cond_3
    return-void
.end method

.method public whitelist onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 3231
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    .line 3232
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 3233
    :cond_0
    return-void
.end method

.method public whitelist onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 2
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1490
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    if-nez v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_1

    .line 1500
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1501
    :cond_1
    return-void
.end method

.method public whitelist onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "requestedPosition"    # J
    .param p3, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1109
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    .line 1110
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    .line 1111
    :cond_0
    return-void
.end method

.method public whitelist onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 2842
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    .line 2843
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 2844
    :cond_0
    return-void
.end method

.method public whitelist onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 1407
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_0

    .line 1408
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1409
    :cond_0
    return-void
.end method

.method public whitelist onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 3134
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_0

    .line 3135
    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 3136
    :cond_0
    return-void
.end method

.method public whitelist pause()V
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->pause()V

    .line 1938
    return-void
.end method

.method public whitelist play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 6
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 1904
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1905
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 1908
    if-eqz p1, :cond_0

    .line 1909
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 1912
    :cond_0
    const-wide/16 v1, 0x0

    if-nez p2, :cond_1

    .line 1913
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNewPlayState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    goto :goto_0

    .line 1915
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNewPlayState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V

    .line 1918
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1919
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    sget-object v5, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v3, v5}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V

    .line 1922
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 1923
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 1924
    const-string v0, "SECAVPLAYER"

    const-string v3, " play"

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 1926
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnProgress(J)V

    .line 1927
    return-void
.end method

.method public whitelist prepare(Lcom/samsung/android/allshare/Item;)V
    .locals 1
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;

    .line 2450
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->prepare(Lcom/samsung/android/allshare/Item;)V

    .line 2451
    return-void
.end method

.method public whitelist requestAspectRatioState()V
    .locals 1

    .line 2632
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->requestAspectRatioState()V

    .line 2633
    return-void
.end method

.method public whitelist requestCaptionState()V
    .locals 1

    .line 2702
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->requestCaptionState()V

    .line 2703
    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 2575
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->requestMobileToTV(Ljava/lang/String;I)V

    .line 2576
    return-void
.end method

.method public whitelist reset360View()V
    .locals 1

    .line 2673
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->reset360View()V

    .line 2674
    return-void
.end method

.method public whitelist resume()V
    .locals 1

    .line 1948
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->resume()V

    .line 1949
    return-void
.end method

.method public whitelist seek(J)V
    .locals 1
    .param p1, "targetTime"    # J

    .line 1963
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer;->seek(J)V

    .line 1964
    return-void
.end method

.method public whitelist setAspectRatio(Ljava/lang/String;)V
    .locals 1
    .param p1, "aspectRatio"    # Ljava/lang/String;

    .line 2618
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 2619
    return-void
.end method

.method public blacklist setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    .line 1974
    return-void
.end method

.method public whitelist setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;

    .line 1983
    return-void
.end method

.method public whitelist setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 2056
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 2057
    return-void
.end method

.method public whitelist setMute(Z)V
    .locals 1
    .param p1, "m"    # Z

    .line 1998
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setMute(Z)V

    .line 1999
    return-void
.end method

.method public whitelist setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 2023
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 2024
    return-void
.end method

.method public whitelist setSECAVPlayerExtensionEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    .line 779
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECExtensionListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;

    .line 780
    return-void
.end method

.method public whitelist setSmartAVPlayerEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 761
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mSECLabListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 762
    return-void
.end method

.method public blacklist setVolume(I)V
    .locals 1
    .param p1, "level"    # I

    .line 2072
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->setVolume(I)V

    .line 2073
    return-void
.end method

.method public whitelist setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 2039
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 2040
    return-void
.end method

.method public whitelist skipDynamicBuffering()V
    .locals 1

    .line 2467
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->skipDynamicBuffering()V

    .line 2468
    return-void
.end method

.method public whitelist stop()V
    .locals 3

    .line 2203
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mHandlerPlayInfo:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRunnablePlayInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mIsPlayInfoThreadRunning:Z

    .line 2206
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mStopTimer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mNotifyStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2208
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mState:Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V

    .line 2209
    const-string v0, "SECAVPLAYER"

    const-string v1, " stop"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->stop()V

    .line 2211
    return-void
.end method

.method public whitelist volumeDown()V
    .locals 2

    .line 2096
    const-string v0, "SECAVPLAYER"

    const-string v1, " volumeDown"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    iget v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 2098
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    if-eq v0, v1, :cond_0

    .line 2099
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 2100
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    .line 2103
    :cond_0
    return-void
.end method

.method public whitelist volumeUp()V
    .locals 2

    .line 2081
    const-string v0, "SECAVPLAYER"

    const-string v1, " volumeUp"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mVolumeDelta:I

    .line 2083
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    if-eq v0, v1, :cond_0

    .line 2084
    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    .line 2085
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/AVPlayer;->getVolume()V

    .line 2088
    :cond_0
    return-void
.end method

.method public whitelist zoom360View(F)V
    .locals 1
    .param p1, "ScaleFactor"    # F

    .line 2661
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mAVPlayer:Lcom/samsung/android/allshare/media/AVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/media/AVPlayer;->zoom360View(F)V

    .line 2662
    return-void
.end method
