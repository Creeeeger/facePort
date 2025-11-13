.class public Landroid/media/LoudnessCodecController;
.super Ljava/lang/Object;
.source "LoudnessCodecController.java"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LoudnessCodecController"


# instance fields
.field private final blacklist mControllerLock:Ljava/lang/Object;

.field private final blacklist mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

.field private final blacklist mMediaCodecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/LoudnessCodecInfo;",
            "Ljava/util/Set<",
            "Landroid/media/MediaCodec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mSessionId:I


# direct methods
.method private constructor blacklist <init>(Landroid/media/LoudnessCodecDispatcher;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    const-string v0, "Dispatcher cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/LoudnessCodecDispatcher;

    iput-object v0, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iput p2, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    return-void
.end method

.method public static whitelist create(I)Landroid/media/LoudnessCodecController;
    .locals 4

    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    new-instance v1, Landroid/media/LoudnessCodecController;

    invoke-direct {v1, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Landroid/media/LoudnessCodecController$1;

    invoke-direct {v3}, Landroid/media/LoudnessCodecController$1;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    return-object v1
.end method

.method public static whitelist create(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;
    .locals 2

    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "OnLoudnessCodecUpdateListener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    new-instance v1, Landroid/media/LoudnessCodecController;

    invoke-direct {v1, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    return-object v1
.end method

.method public static blacklist createForTesting(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/IAudioService;)Landroid/media/LoudnessCodecController;
    .locals 2

    const-string v0, "IAudioService cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "OnLoudnessCodecUpdateListener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    invoke-direct {v0, p3}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    new-instance v1, Landroid/media/LoudnessCodecController;

    invoke-direct {v1, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    return-object v1
.end method

.method private static blacklist getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;
    .locals 11

    const-string v0, "channel-count"

    new-instance v1, Landroid/media/LoudnessCodecInfo;

    invoke-direct {v1}, Landroid/media/LoudnessCodecInfo;-><init>()V

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "LoudnessCodecController"

    if-eqz v3, :cond_0

    const-string v0, "MediaCodec used for encoding does not support loudness annotation"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v6, "mime"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    const/4 v8, -0x1

    :try_start_1
    const-string v9, "aac-profile"

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move v7, v9

    goto :goto_0

    :catch_0
    move-exception v9

    :goto_0
    :try_start_2
    const-string v9, "profile"

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    move v8, v9

    goto :goto_1

    :catch_1
    move-exception v9

    :goto_1
    const/4 v9, 0x1

    const/16 v10, 0x2a

    if-eq v7, v10, :cond_2

    if-ne v8, v10, :cond_1

    goto :goto_2

    :cond_1
    :try_start_3
    iput v9, v1, Landroid/media/LoudnessCodecInfo;->metadataType:I

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v10, 0x2

    iput v10, v1, Landroid/media/LoudnessCodecInfo;->metadataType:I

    :goto_3
    nop

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ge v8, v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    iput-boolean v9, v1, Landroid/media/LoudnessCodecInfo;->isDownmixing:Z

    nop

    return-object v1

    :cond_4
    const-string v0, "MediaCodec mime type not supported for loudness annotation"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v4

    :catch_2
    move-exception v0

    const-string v3, "MediaCodec is not configured"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method static synthetic blacklist lambda$addMediaCodec$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Landroid/media/LoudnessCodecInfo;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p3
.end method

.method static synthetic blacklist lambda$removeMediaCodec$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/LoudnessCodecInfo;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    invoke-interface {p4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object p4
.end method


# virtual methods
.method public whitelist addMediaCodec(Landroid/media/MediaCodec;)Z
    .locals 8

    const-string v0, "MediaCodec for addMediaCodec cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v3, "LoudnessCodecController"

    const-string v4, "Could not extract codec loudness information"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v3, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v2, v4

    iget-object v4, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    new-instance v5, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v0}, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_1

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v4, v5

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v3, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V

    const/4 v2, 0x1

    return v2

    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loudness controller already added "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v1, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/media/LoudnessCodecDispatcher;->stopLoudnessCodecUpdates(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getLoudnessCodecParams(Landroid/media/MediaCodec;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "MediaCodec cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    invoke-virtual {v1, v0}, Landroid/media/LoudnessCodecDispatcher;->getLoudnessCodecParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "MediaCodec was not added for loudness annotation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MediaCodec does not have valid codec information"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist getSessionId()I
    .locals 1

    iget v0, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    return v0
.end method

.method blacklist mediaCodecsConsume(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map$Entry<",
            "Landroid/media/LoudnessCodecInfo;",
            "Ljava/util/Set<",
            "Landroid/media/MediaCodec;",
            ">;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeMediaCodec(Landroid/media/MediaCodec;)V
    .locals 7

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v1, v2

    const-string v2, "MediaCodec for removeMediaCodec cannot be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    new-instance v5, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, p1, v1}, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v4, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {v3, v4, v2}, Landroid/media/LoudnessCodecDispatcher;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loudness controller does not contain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Could not extract codec loudness information"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
