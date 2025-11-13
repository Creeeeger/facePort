.class Lcom/samsung/android/allshare/extension/SECAVPlayer$State;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private blacklist currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field private blacklist mItemDuration:J

.field private blacklist mLastPos:J

.field private blacklist mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

.field private blacklist mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mPlayRequested:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcompareAndSetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;ZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->compareAndSetNearlyFinished(ZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->getItemDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->getLastPos()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/media/MediaInfo;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/samsung/android/allshare/media/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->isPlayRequested()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetItemDuration(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setItemDuration(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetLastPos(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setLastPos(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMediaInfo(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Lcom/samsung/android/allshare/media/MediaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setMediaInfo(Lcom/samsung/android/allshare/media/MediaInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetNearlyFinished(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setNearlyFinished(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetNewPlayState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setNewPlayState(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPlayRequested(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->setPlayRequested(Z)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/extension/SECAVPlayer$State-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;-><init>()V

    return-void
.end method

.method private blacklist compareAndSetNearlyFinished(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method private blacklist getItemDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    return-wide v0
.end method

.method private blacklist getLastPos()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    return-wide v0
.end method

.method private blacklist getMediaInfo()Lcom/samsung/android/allshare/media/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

    return-object v0
.end method

.method private blacklist isPlayRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    return v0
.end method

.method private blacklist setItemDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    return-void
.end method

.method private blacklist setLastPos(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    :cond_0
    return-void
.end method

.method private blacklist setMediaInfo(Lcom/samsung/android/allshare/media/MediaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

    return-void
.end method

.method private blacklist setNearlyFinished(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private blacklist setNewPlayState(J)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/samsung/android/allshare/media/MediaInfo;

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mNearlyFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method private blacklist setPlayRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    return-void
.end method
