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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mRefresh:Z

    iput-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    iput-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    iput-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iput-boolean v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mRefresh:Z

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "SemMediaPlayerMTPEventThread"

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    :cond_0
    new-instance v2, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    new-array v2, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    new-array v2, v3, [J

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    iput-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    return-void
.end method

.method private declared-synchronized blacklist notifySeek()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

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

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v7, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    iget-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MTP"

    const-string v4, "onSeekComplete but no player"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist notifyStop()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist notifyTimedEvent(Z)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    :try_start_1
    iput-boolean v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mRefresh:Z

    iput-boolean v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    :goto_0
    move-wide v6, v4

    iget-boolean v0, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-boolean v0, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    const-wide/16 v8, -0x1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyTimedEvent("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") from {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    iget-object v11, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    aget-wide v14, v11, v13

    cmp-long v16, v14, v8

    if-nez v16, :cond_1

    goto :goto_2

    :cond_1
    if-nez v10, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move v10, v3

    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MTP"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    :goto_3
    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v10, v10

    if-ge v3, v10, :cond_b

    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v10, v10, v3

    if-nez v10, :cond_5

    goto :goto_5

    :cond_5
    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v10, v10, v3

    cmp-long v10, v10, v8

    if-gtz v10, :cond_6

    goto :goto_4

    :cond_6
    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v10, v10, v3

    const-wide/16 v12, 0x3e8

    add-long/2addr v12, v4

    cmp-long v10, v10, v12

    if-gtz v10, :cond_8

    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v10, v10, v3

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "MTP"

    const-string v11, "removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    aput-wide v8, v10, v3

    goto :goto_4

    :cond_8
    cmp-long v10, v6, v4

    if-eqz v10, :cond_9

    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v10, v10, v3

    cmp-long v10, v10, v6

    if-gez v10, :cond_a

    :cond_9
    iget-object v10, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v10, v10, v3

    move-wide v6, v10

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    :goto_5
    cmp-long v3, v6, v4

    if-lez v3, :cond_d

    iget-boolean v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    if-nez v3, :cond_d

    iget-boolean v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

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

    :cond_c
    iget-object v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/media/SemMediaPlayer;->notifyAt(J)V

    goto :goto_6

    :cond_d
    iget-object v3, v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

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

    invoke-interface {v8, v4, v5}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :cond_e
    monitor-exit p0

    return-void

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [J

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v1, v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    :cond_3
    return v0
.end method

.method private blacklist scheduleNotification(IJ)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

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

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public blacklist cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public blacklist getCurrentTimeUs(ZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

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

    iget-boolean v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

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

    iget-wide v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    nop

    if-eqz p2, :cond_5

    :try_start_2
    iget-wide v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    iget-wide v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v4, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    :cond_6
    :goto_3
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    :catch_0
    move-exception v2

    iget-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v3, :cond_a

    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    if-eqz p2, :cond_7

    iget-wide v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v5, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    :cond_7
    iget-wide v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v3, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    :cond_8
    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPaused:Z

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

    :cond_9
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    :cond_a
    nop

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3

    monitor-enter p0

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

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onBuffering(Z)V
    .locals 3

    monitor-enter p0

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

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mBuffering:Z

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onNewPlayer()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mBuffering:Z

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist onNotifyTime()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string v1, "onNotifyTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onPaused(Z)V
    .locals 3

    monitor-enter p0

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

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mPausing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mSeeking:Z

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string v1, "scheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
