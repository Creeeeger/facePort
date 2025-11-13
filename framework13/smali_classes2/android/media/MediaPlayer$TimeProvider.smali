.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final greylist-max-o MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final greylist-max-o NOTIFY:I = 0x1

.field private static final blacklist NOTIFY_DATA:I = 0x2

.field private static final greylist-max-o NOTIFY_SEEK:I = 0x3

.field private static final greylist-max-o NOTIFY_STOP:I = 0x2

.field private static final greylist-max-o NOTIFY_TIME:I = 0x0

.field private static final greylist-max-o NOTIFY_TRACK_DATA:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MTP"

.field private static final greylist-max-o TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public greylist-max-o DEBUG:Z

.field private greylist-max-o mBuffering:Z

.field private greylist-max-o mEventHandler:Landroid/os/Handler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private greylist-max-o mLastReportedTime:J

.field private greylist-max-o mLastTimeUs:J

.field private greylist-max-o mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private greylist-max-o mPaused:Z

.field private greylist-max-o mPausing:Z

.field private greylist-max-o mPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mRefresh:Z

.field private greylist-max-o mSeeking:Z

.field private greylist-max-o mStopped:Z

.field private greylist-max-o mTimes:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySeek(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStop(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTimedEvent(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTrackData(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 6531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6504
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 6506
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6507
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6515
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 6516
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6517
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6529
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 6532
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 6534
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6538
    goto :goto_0

    .line 6535
    :catch_0
    move-exception v4

    .line 6537
    .local v4, "e":Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 6541
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    .local v4, "looper":Landroid/os/Looper;
    if-nez v2, :cond_0

    .line 6542
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    if-nez v2, :cond_0

    .line 6544
    new-instance v2, Landroid/os/HandlerThread;

    const/4 v5, -0x2

    const-string v6, "MediaPlayerMTPEventThread"

    invoke-direct {v2, v6, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 6546
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 6547
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 6549
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v4}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 6551
    new-array v2, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6552
    new-array v2, v3, [J

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 6553
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 6554
    return-void
.end method

.method private declared-synchronized greylist-max-o notifySeek()V
    .locals 8

    monitor-enter p0

    .line 6655
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6657
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    .line 6658
    .local v2, "timeUs":J
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSeekComplete at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6660
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    :cond_0
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 6661
    .local v7, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v7, :cond_1

    .line 6662
    goto :goto_1

    .line 6664
    :cond_1
    invoke-interface {v7, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6660
    .end local v7    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6671
    .end local v2    # "timeUs":J
    :cond_2
    :goto_1
    goto :goto_2

    .line 6666
    :catch_0
    move-exception v2

    .line 6668
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MTP"

    const-string v4, "onSeekComplete but no player"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6669
    :cond_3
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6670
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6672
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    monitor-exit p0

    return-void

    .line 6654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o notifyStop()V
    .locals 4

    monitor-enter p0

    .line 6681
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 6682
    .local v3, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v3, :cond_0

    .line 6683
    goto :goto_1

    .line 6685
    :cond_0
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6681
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6687
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 6680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o notifyTimedEvent(Z)V
    .locals 17
    .param p1, "refreshTime"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 6762
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6768
    .local v4, "nowUs":J
    goto :goto_0

    .line 6761
    .end local v4    # "nowUs":J
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    .end local p1    # "refreshTime":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 6763
    .restart local p1    # "refreshTime":Z
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 6765
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    iput-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 6766
    iput-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6767
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    .line 6769
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "nowUs":J
    :goto_0
    move-wide v6, v4

    .line 6771
    .local v6, "nextTimeUs":J
    iget-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 6773
    monitor-exit p0

    return-void

    .line 6776
    .restart local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    :cond_0
    :try_start_2
    iget-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    const-wide/16 v8, -0x1

    if-eqz v0, :cond_4

    .line 6777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6778
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v10, "notifyTimedEvent("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 6779
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") from {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6780
    const/4 v10, 0x1

    .line 6781
    .local v10, "first":Z
    iget-object v11, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    aget-wide v14, v11, v13

    .line 6782
    .local v14, "time":J
    cmp-long v16, v14, v8

    if-nez v16, :cond_1

    .line 6783
    goto :goto_2

    .line 6785
    :cond_1
    if-nez v10, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6786
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    :cond_2
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6787
    const/4 v3, 0x0

    move v10, v3

    .line 6781
    .end local v14    # "time":J
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 6789
    :cond_3
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6790
    const-string v3, "MTP"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6793
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "first":Z
    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 6795
    .local v0, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_3
    iget-object v10, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v11, v10

    if-ge v3, v11, :cond_b

    .line 6796
    iget-object v11, v1, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v11, v11, v3

    if-nez v11, :cond_5

    .line 6797
    goto :goto_5

    .line 6799
    :cond_5
    aget-wide v12, v10, v3

    cmp-long v10, v12, v8

    if-gtz v10, :cond_6

    goto :goto_4

    .line 6801
    :cond_6
    const-wide/16 v14, 0x3e8

    add-long/2addr v14, v4

    cmp-long v10, v12, v14

    if-gtz v10, :cond_8

    .line 6802
    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 6803
    iget-boolean v10, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "MTP"

    const-string v11, "removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6804
    :cond_7
    iget-object v10, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aput-wide v8, v10, v3

    goto :goto_4

    .line 6805
    :cond_8
    cmp-long v10, v6, v4

    if-eqz v10, :cond_9

    cmp-long v10, v12, v6

    if-gez v10, :cond_a

    .line 6806
    :cond_9
    move-wide v6, v12

    .line 6795
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6810
    .end local v3    # "ix":I
    :cond_b
    :goto_5
    cmp-long v3, v6, v4

    if-lez v3, :cond_d

    iget-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-nez v3, :cond_d

    .line 6812
    iget-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "MTP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scheduling for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6813
    :cond_c
    iget-object v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaPlayer;->notifyAt(J)V

    goto :goto_6

    .line 6815
    :cond_d
    iget-object v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 6819
    :goto_6
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6820
    .local v8, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v8, v4, v5}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6821
    .end local v8    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    goto :goto_7

    .line 6822
    :cond_e
    monitor-exit p0

    return-void

    .line 6761
    .end local v0    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v4    # "nowUs":J
    .end local v6    # "nextTimeUs":J
    .end local p1    # "refreshTime":Z
    :goto_8
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o notifyTrackData(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/media/SubtitleTrack;",
            "[B>;)V"
        }
    .end annotation

    .local p1, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    monitor-enter p0

    .line 6675
    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 6676
    .local v0, "track":Landroid/media/SubtitleTrack;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 6677
    .local v1, "data":[B
    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6678
    monitor-exit p0

    return-void

    .line 6674
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v1    # "data":[B
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    .end local p1    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6690
    const/4 v0, 0x0

    .line 6691
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 6692
    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    if-nez v2, :cond_0

    .line 6693
    goto :goto_1

    .line 6691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6698
    :cond_1
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 6699
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6701
    .local v2, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [J

    .line 6702
    .local v3, "newTimes":[J
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6703
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6704
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6705
    iput-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 6708
    .end local v2    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v3    # "newTimes":[J
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    .line 6709
    aput-object p1, v1, v0

    .line 6710
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 6712
    :cond_3
    return v0
.end method

.method private greylist-max-o scheduleNotification(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    .line 6558
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 6559
    return-void

    .line 6562
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTP"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6563
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6564
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 6565
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6566
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6738
    monitor-enter p0

    .line 6739
    const/4 v0, 0x0

    .line 6740
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 6741
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 6742
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6744
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6746
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 6747
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    .line 6748
    goto :goto_1

    .line 6749
    :cond_0
    if-nez v2, :cond_1

    .line 6750
    goto :goto_1

    .line 6740
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6754
    :cond_2
    :goto_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6755
    .end local v0    # "i":I
    monitor-exit p0

    .line 6756
    return-void

    .line 6755
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o close()V
    .locals 2

    .line 6570
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6572
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6574
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 6575
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6576
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 6578
    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 6582
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 6583
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6585
    :cond_0
    return-void
.end method

.method public greylist-max-o getCurrentTimeUs(ZZ)J
    .locals 7
    .param p1, "refreshTime"    # Z
    .param p2, "monotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 6826
    monitor-enter p0

    .line 6829
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 6830
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 6834
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 6835
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6836
    iget-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_3

    const-string v4, "paused"

    goto :goto_2

    :cond_3
    const-string v4, "playing"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6850
    :cond_4
    nop

    .line 6851
    if-eqz p2, :cond_5

    :try_start_2
    iget-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 6853
    sub-long/2addr v4, v2

    const-wide/32 v2, 0xf4240

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    .line 6856
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6857
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6858
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_3

    .line 6861
    :cond_5
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 6864
    :cond_6
    :goto_3
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 6837
    :catch_0
    move-exception v2

    .line 6838
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v3, :cond_a

    .line 6840
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6841
    if-eqz p2, :cond_7

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    .line 6842
    :cond_7
    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 6844
    :cond_8
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6845
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state, but pausing: estimating at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6846
    :cond_9
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 6849
    :cond_a
    nop

    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    .end local p1    # "refreshTime":Z
    .end local p2    # "monotonic":Z
    throw v2

    .line 6865
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    .restart local p1    # "refreshTime":Z
    .restart local p2    # "monotonic":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public greylist-max-o notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6717
    monitor-enter p0

    .line 6718
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6719
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    .line 6720
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6721
    monitor-exit p0

    .line 6722
    return-void

    .line 6721
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o onBuffering(Z)V
    .locals 3
    .param p1, "buffering"    # Z

    .line 6613
    monitor-enter p0

    .line 6614
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6615
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 6616
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6617
    monitor-exit p0

    .line 6618
    return-void

    .line 6617
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o onNewPlayer()V
    .locals 3

    .line 6644
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_0

    .line 6645
    monitor-enter p0

    .line 6646
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6647
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6648
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 6649
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6650
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6652
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o onNotifyTime()V
    .locals 3

    .line 6589
    monitor-enter p0

    .line 6590
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string v1, "onNotifyTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6592
    monitor-exit p0

    .line 6593
    return-void

    .line 6592
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o onPaused(Z)V
    .locals 4
    .param p1, "paused"    # Z

    .line 6597
    monitor-enter p0

    .line 6598
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6599
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 6600
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6601
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6602
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_0

    .line 6604
    :cond_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6605
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6606
    invoke-direct {p0, v3, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6608
    :goto_0
    monitor-exit p0

    .line 6609
    return-void

    .line 6608
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 6635
    monitor-enter p0

    .line 6636
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6637
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6638
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6639
    monitor-exit p0

    .line 6640
    return-void

    .line 6639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o onStopped()V
    .locals 3

    .line 6622
    monitor-enter p0

    .line 6623
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6624
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6625
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6626
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6627
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 6628
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6629
    monitor-exit p0

    .line 6630
    return-void

    .line 6629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6725
    monitor-enter p0

    .line 6726
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string v1, "scheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6727
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    .line 6729
    .local v0, "i":I
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-nez v1, :cond_1

    .line 6730
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 6731
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6733
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 6734
    return-void

    .line 6733
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
