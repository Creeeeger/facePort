.class Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final blacklist MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final blacklist MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final blacklist NOTIFY:I = 0x1

.field private static final blacklist NOTIFY_DATA:I = 0x2

.field private static final blacklist NOTIFY_SEEK:I = 0x3

.field private static final blacklist NOTIFY_STOP:I = 0x2

.field private static final blacklist NOTIFY_TIME:I = 0x0

.field private static final blacklist NOTIFY_TRACK_DATA:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "MTP"

.field private static final blacklist TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public blacklist DEBUG:Z

.field private blacklist mBuffering:Z

.field private blacklist mEventHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mLastReportedTime:J

.field private blacklist mLastTimeUs:J

.field private blacklist mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private blacklist mPaused:Z

.field private blacklist mPausing:Z

.field private blacklist mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field private blacklist mRefresh:Z

.field private blacklist mSeeking:Z

.field private blacklist mTimes:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySeek(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStop(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTimedEvent(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTrackData(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Lcom/samsung/android/media/SemMediaPlayer;

    .line 2707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 2685
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    .line 2693
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mRefresh:Z

    .line 2694
    iput-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    .line 2695
    iput-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    .line 2705
    iput-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    .line 2708
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 2710
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2714
    goto :goto_0

    .line 2711
    :catch_0
    move-exception v4

    .line 2713
    .local v4, "e":Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mRefresh:Z

    .line 2717
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    .local v4, "looper":Landroid/os/Looper;
    if-nez v2, :cond_0

    .line 2718
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    if-nez v2, :cond_0

    .line 2720
    new-instance v2, Landroid/os/HandlerThread;

    const/4 v5, -0x2

    const-string v6, "SemMediaPlayerMTPEventThread"

    invoke-direct {v2, v6, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2722
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2723
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 2725
    :cond_0
    new-instance v2, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 2727
    new-array v2, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 2728
    new-array v2, v3, [J

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    .line 2729
    iput-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 2730
    return-void
.end method

.method private declared-synchronized blacklist notifySeek()V
    .locals 8

    monitor-enter p0

    .line 2809
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    .line 2812
    .local v2, "timeUs":J
    iget-boolean v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 2814
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 2815
    .local v7, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v7, :cond_1

    .line 2816
    goto :goto_1

    .line 2818
    :cond_1
    invoke-interface {v7, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2814
    .end local v7    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2825
    .end local v2    # "timeUs":J
    :cond_2
    :goto_1
    goto :goto_2

    .line 2820
    :catch_0
    move-exception v2

    .line 2822
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MTP"

    const-string v4, "onSeekComplete but no player"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    .line 2824
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2826
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    monitor-exit p0

    return-void

    .line 2808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist notifyStop()V
    .locals 4

    monitor-enter p0

    .line 2835
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2836
    .local v3, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v3, :cond_0

    .line 2837
    goto :goto_1

    .line 2839
    :cond_0
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2835
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2841
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 2834
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist notifyTimedEvent(Z)V
    .locals 17
    .param p1, "refreshTime"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 2914
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2920
    .local v4, "nowUs":J
    goto :goto_0

    .line 2913
    .end local v4    # "nowUs":J
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    .end local p1    # "refreshTime":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 2915
    .restart local p1    # "refreshTime":Z
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2917
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    iput-boolean v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mRefresh:Z

    .line 2918
    iput-boolean v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    .line 2919
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    .line 2921
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "nowUs":J
    :goto_0
    move-wide v6, v4

    .line 2923
    .local v6, "nextTimeUs":J
    iget-boolean v0, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 2925
    monitor-exit p0

    return-void

    .line 2928
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    :cond_0
    :try_start_2
    iget-boolean v0, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    const-wide/16 v8, -0x1

    if-eqz v0, :cond_4

    .line 2929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2930
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v10, "notifyTimedEvent("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2931
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") from {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2932
    const/4 v10, 0x1

    .line 2933
    .local v10, "first":Z
    iget-object v11, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    aget-wide v14, v11, v13

    .line 2934
    .local v14, "time":J
    cmp-long v16, v14, v8

    if-nez v16, :cond_1

    .line 2935
    goto :goto_2

    .line 2937
    :cond_1
    if-nez v10, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    :cond_2
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2939
    const/4 v3, 0x0

    move v10, v3

    .line 2933
    .end local v14    # "time":J
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 2941
    :cond_3
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    const-string v3, "MTP"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "first":Z
    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2947
    .local v0, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_3
    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v11, v10

    if-ge v3, v11, :cond_b

    .line 2948
    iget-object v11, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v11, v11, v3

    if-nez v11, :cond_5

    .line 2949
    goto :goto_5

    .line 2951
    :cond_5
    aget-wide v12, v10, v3

    cmp-long v10, v12, v8

    if-gtz v10, :cond_6

    goto :goto_4

    .line 2953
    :cond_6
    const-wide/16 v14, 0x3e8

    add-long/2addr v14, v4

    cmp-long v10, v12, v14

    if-gtz v10, :cond_8

    .line 2954
    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2955
    iget-boolean v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "MTP"

    const-string/jumbo v11, "removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :cond_7
    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    aput-wide v8, v10, v3

    goto :goto_4

    .line 2957
    :cond_8
    cmp-long v10, v6, v4

    if-eqz v10, :cond_9

    cmp-long v10, v12, v6

    if-gez v10, :cond_a

    .line 2958
    :cond_9
    move-wide v6, v12

    .line 2947
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2962
    .end local v3    # "ix":I
    :cond_b
    :goto_5
    cmp-long v3, v6, v4

    if-lez v3, :cond_d

    iget-boolean v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    if-nez v3, :cond_d

    .line 2964
    iget-boolean v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "MTP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scheduling for "

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

    .line 2965
    :cond_c
    iget-object v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/media/SemMediaPlayer;->notifyAt(J)V

    goto :goto_6

    .line 2967
    :cond_d
    iget-object v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2971
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

    .line 2972
    .local v8, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v8, v4, v5}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2973
    .end local v8    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    goto :goto_7

    .line 2974
    :cond_e
    monitor-exit p0

    return-void

    .line 2913
    .end local v0    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v4    # "nowUs":J
    .end local v6    # "nextTimeUs":J
    .end local p1    # "refreshTime":Z
    :goto_8
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist notifyTrackData(Landroid/util/Pair;)V
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

    .line 2829
    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 2830
    .local v0, "track":Landroid/media/SubtitleTrack;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 2831
    .local v1, "data":[B
    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2832
    monitor-exit p0

    return-void

    .line 2828
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v1    # "data":[B
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    .end local p1    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 2844
    const/4 v0, 0x0

    .line 2845
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2846
    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    if-nez v2, :cond_0

    .line 2847
    goto :goto_1

    .line 2845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2852
    :cond_1
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 2853
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 2855
    .local v2, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [J

    .line 2856
    .local v3, "newTimes":[J
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2857
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2858
    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 2859
    iput-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    .line 2862
    .end local v2    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v3    # "newTimes":[J
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    .line 2863
    aput-object p1, v1, v0

    .line 2864
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 2866
    :cond_3
    return v0
.end method

.method private blacklist scheduleNotification(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    .line 2734
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2735
    return-void

    .line 2738
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleNotification "

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

    .line 2739
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2740
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2741
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2742
    return-void
.end method


# virtual methods
.method public blacklist cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 2890
    monitor-enter p0

    .line 2891
    const/4 v0, 0x0

    .line 2892
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2893
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 2894
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2896
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2898
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 2899
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    .line 2900
    goto :goto_1

    .line 2901
    :cond_0
    if-nez v2, :cond_1

    .line 2902
    goto :goto_1

    .line 2892
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2906
    :cond_2
    :goto_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2907
    .end local v0    # "i":I
    monitor-exit p0

    .line 2908
    return-void

    .line 2907
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist close()V
    .locals 2

    .line 2746
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2747
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2748
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2749
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2752
    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 2756
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2757
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2759
    :cond_0
    return-void
.end method

.method public blacklist getCurrentTimeUs(ZZ)J
    .locals 7
    .param p1, "refreshTime"    # Z
    .param p2, "monotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2978
    monitor-enter p0

    .line 2981
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2982
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 2986
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 2987
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mBuffering:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    .line 2988
    iget-boolean v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "paused"

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "playing"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3002
    :cond_4
    nop

    .line 3003
    if-eqz p2, :cond_5

    :try_start_2
    iget-wide v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    .line 3005
    sub-long/2addr v4, v2

    const-wide/32 v2, 0xf4240

    cmp-long v0, v4, v2

    if-lez v0, :cond_6

    .line 3008
    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    .line 3009
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_3

    .line 3012
    :cond_5
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 3015
    :cond_6
    :goto_3
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 2989
    :catch_0
    move-exception v2

    .line 2990
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v3, :cond_a

    .line 2992
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    .line 2993
    if-eqz p2, :cond_7

    iget-wide v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v5, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    .line 2994
    :cond_7
    iget-wide v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 2996
    :cond_8
    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    .line 2997
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state, but pausing: estimating at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    :cond_9
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 3001
    :cond_a
    nop

    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    .end local p1    # "refreshTime":Z
    .end local p2    # "monotonic":Z
    throw v2

    .line 3016
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    .restart local p1    # "refreshTime":Z
    .restart local p2    # "monotonic":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 2871
    monitor-enter p0

    .line 2872
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 2873
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    .line 2874
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2875
    monitor-exit p0

    .line 2876
    return-void

    .line 2875
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onBuffering(Z)V
    .locals 3
    .param p1, "buffering"    # Z

    .line 2781
    monitor-enter p0

    .line 2782
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 2783
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mBuffering:Z

    .line 2784
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2785
    monitor-exit p0

    .line 2786
    return-void

    .line 2785
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onNewPlayer()V
    .locals 3

    .line 2799
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_0

    .line 2800
    monitor-enter p0

    .line 2801
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    .line 2802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mBuffering:Z

    .line 2803
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2804
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2806
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist onNotifyTime()V
    .locals 3

    .line 2763
    monitor-enter p0

    .line 2764
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string v1, "onNotifyTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2766
    monitor-exit p0

    .line 2767
    return-void

    .line 2766
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onPaused(Z)V
    .locals 3
    .param p1, "paused"    # Z

    .line 2771
    monitor-enter p0

    .line 2772
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

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

    .line 2773
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    .line 2774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    .line 2775
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2776
    monitor-exit p0

    .line 2777
    return-void

    .line 2776
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lcom/samsung/android/media/SemMediaPlayer;

    .line 2791
    monitor-enter p0

    .line 2792
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    .line 2793
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2794
    monitor-exit p0

    .line 2795
    return-void

    .line 2794
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 2879
    monitor-enter p0

    .line 2880
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "scheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    .line 2883
    .local v0, "i":I
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 2884
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2885
    .end local v0    # "i":I
    monitor-exit p0

    .line 2886
    return-void

    .line 2885
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
