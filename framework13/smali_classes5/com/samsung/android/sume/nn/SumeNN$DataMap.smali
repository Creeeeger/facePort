.class final Lcom/samsung/android/sume/nn/SumeNN$DataMap;
.super Ljava/lang/Object;
.source "SumeNN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMap"
.end annotation


# instance fields
.field private blacklist cv_:Lcom/samsung/android/sume/Duo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/Duo<",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist idOffset:I

.field private blacklist lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private blacklist mb_:Lcom/samsung/android/sume/Duo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/Duo<",
            "[",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/MediaBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->idOffset:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNN$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/sume/nn/SumeNN$1;

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getContentValues$0(Lcom/samsung/android/sume/Duo;)[Landroid/content/ContentValues;
    .locals 2
    .param p0, "e"    # Lcom/samsung/android/sume/Duo;

    .line 344
    iget-object v0, p0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic blacklist lambda$getMediaBuffers$1(Lcom/samsung/android/sume/Duo;)[Lcom/samsung/android/sume/MediaBuffer;
    .locals 2
    .param p0, "e"    # Lcom/samsung/android/sume/Duo;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/sume/MediaBuffer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/MediaBuffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$setIdList$2(Lcom/samsung/android/sume/Duo;)Ljava/util/Optional;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/Duo;

    .line 371
    iget-object v0, p0, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v0, [Landroid/content/ContentValues;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setIdList$3(Lcom/samsung/android/sume/Duo;)Ljava/util/Optional;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/Duo;

    .line 372
    iget-object v0, p0, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v0, [Lcom/samsung/android/sume/MediaBuffer;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final blacklist clear()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 440
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 442
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    .line 443
    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 446
    nop

    .line 447
    return-void

    .line 445
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 446
    throw v0
.end method

.method public final blacklist getContentValues()[Landroid/content/ContentValues;
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 345
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 343
    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 348
    throw v0
.end method

.method public blacklist getIdOffset()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->idOffset:I

    return v0
.end method

.method public final blacklist getMediaBuffers()[Lcom/samsung/android/sume/MediaBuffer;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 357
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/MediaBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 355
    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 360
    throw v0
.end method

.method public final blacklist remove(I)V
    .locals 2
    .param p1, "contentsId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentsId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 430
    nop

    .line 431
    return-void

    .line 426
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "both cvData & mbData are null"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    .end local p1    # "contentsId":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    .restart local p1    # "contentsId":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 430
    throw v0
.end method

.method public final blacklist setIdList([I)V
    .locals 8
    .param p1, "idArray"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idArray"
        }
    .end annotation

    .line 364
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->idOffset:I

    .line 366
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string v3, "data is cleared abnormally"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    const-string v3, "not allow combination of ContentValues & SemMediaBuffer as input"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    .line 372
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$DataMap$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 372
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    .local v0, "size":I
    array-length v3, p1

    if-eq v0, v3, :cond_6

    .line 376
    const/4 v3, 0x0

    .line 377
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, ", size="

    const-string v6, "["

    if-eqz v4, :cond_4

    .line 378
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cv="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    iget-object v6, v6, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 379
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    iget-object v4, v4, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    iget-object v5, v5, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v5, [Landroid/content/ContentValues;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_4

    .line 382
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mb="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    iget-object v6, v6, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 383
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    iget-object v4, v4, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    iget-object v5, v5, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v5, [Lcom/samsung/android/sume/MediaBuffer;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 386
    :cond_5
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 388
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "# of returned ids(%d) is differ from length of input data(%d): %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    array-length v7, p1

    .line 389
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    .line 388
    invoke-static {v5, v6}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 392
    .end local v0    # "size":I
    .end local v3    # "msg":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 393
    nop

    .line 395
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 397
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_8

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_7

    .line 399
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    iget-object v1, v1, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/content/ContentValues;

    aget-object v1, v1, v0

    .line 400
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "media-id"

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    iget-object v2, v2, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    nop

    .end local v1    # "cv":Landroid/content/ContentValues;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    :cond_7
    goto :goto_7

    .line 404
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_9

    .line 405
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    iget-object v1, v1, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v1, [Lcom/samsung/android/sume/MediaBuffer;

    aget-object v1, v1, v0

    .line 406
    .local v1, "buf":Lcom/samsung/android/sume/MediaBuffer;
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/MediaBuffer;->setId(I)V

    .line 407
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    iget-object v2, v2, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    nop

    .end local v1    # "buf":Lcom/samsung/android/sume/MediaBuffer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 411
    .end local v0    # "i":I
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 412
    nop

    .line 413
    return-void

    .line 411
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 412
    throw v0

    .line 392
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 393
    throw v0
.end method

.method public final blacklist setInputData([Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "array"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not allow combination of ContentValues & SemMediaBuffer as input"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 323
    :try_start_0
    new-instance v0, Lcom/samsung/android/sume/Duo;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sume/Duo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 326
    nop

    .line 327
    return-void

    .line 325
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 326
    throw v0
.end method

.method public final blacklist setInputData([Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 3
    .param p1, "array"    # [Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->cv_:Lcom/samsung/android/sume/Duo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not allow combination of ContentValues & SemMediaBuffer as input"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 333
    :try_start_0
    new-instance v0, Lcom/samsung/android/sume/Duo;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sume/Duo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->mb_:Lcom/samsung/android/sume/Duo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 336
    throw v0
.end method
