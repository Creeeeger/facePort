.class public Landroid/os/RemoteCallbackList;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallbackList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteCallbackList"


# instance fields
.field private greylist-max-o mActiveBroadcast:[Ljava/lang/Object;

.field private greylist-max-o mBroadcastCount:I

.field greylist mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/RemoteCallbackList<",
            "TE;>.Callback;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mKilled:Z

.field private greylist-max-o mRecentCallers:Ljava/lang/StringBuilder;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 55
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    return-void
.end method

.method private greylist-max-o logExcessiveCallbacks()V
    .locals 10

    .line 451
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    int-to-long v0, v0

    .line 452
    .local v0, "size":J
    const-wide/16 v2, 0xbb8

    .line 453
    .local v2, "TOO_MANY":J
    const-wide/16 v4, 0x3e8

    .line 454
    .local v4, "MAX_CHARS":J
    const-wide/16 v6, 0xbb8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_1

    .line 455
    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    if-nez v6, :cond_0

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 458
    :cond_0
    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 459
    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than 3000 remote callbacks registered. Recent callers:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 462
    const-string v7, "RemoteCallbackList"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    .line 469
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist beginBroadcast()I
    .locals 5

    .line 241
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 242
    :try_start_0
    iget v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    if-gtz v1, :cond_4

    .line 247
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 248
    .local v1, "N":I
    if-gtz v1, :cond_0

    .line 249
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 251
    :cond_0
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 252
    .local v2, "active":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v3, v1, :cond_2

    .line 253
    :cond_1
    new-array v3, v1, [Ljava/lang/Object;

    move-object v2, v3

    iput-object v3, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 255
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 256
    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return v1

    .line 243
    .end local v1    # "N":I
    .end local v2    # "active":[Ljava/lang/Object;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "beginBroadcast() called while already in a broadcast"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    throw v1

    .line 259
    .restart local p0    # "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist broadcast(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "TE;TC;>;)V"
        }
    .end annotation

    .line 364
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TE;TC;>;"
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 366
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 367
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 371
    throw v1

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 371
    nop

    .line 372
    return-void
.end method

.method public greylist-max-o broadcast(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TE;>;)V"
        }
    .end annotation

    .line 330
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TE;>;"
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 332
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 333
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 337
    throw v1

    .line 336
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 337
    nop

    .line 338
    return-void
.end method

.method public greylist-max-o broadcastForEachCookie(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TC;>;)V"
        }
    .end annotation

    .line 347
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TC;>;"
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 349
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 350
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 354
    throw v1

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 354
    nop

    .line 355
    return-void
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 443
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 444
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "callbacks: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "killed: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "broadcasts count: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 447
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist finishBroadcast()V
    .locals 5

    .line 305
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 306
    :try_start_0
    iget v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    if-ltz v1, :cond_1

    .line 311
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 312
    .local v2, "active":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 313
    nop

    .line 314
    .local v1, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 315
    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 320
    .end local v2    # "active":[Ljava/lang/Object;
    monitor-exit v0

    .line 321
    return-void

    .line 307
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    throw v1

    .line 320
    .restart local p0    # "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getBroadcastCookie(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 294
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v0, v0, Landroid/os/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getBroadcastItem(I)Landroid/os/IInterface;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 284
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v0, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    return-object v0
.end method

.method public whitelist getRegisteredCallbackCookie(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 433
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    if-eqz v1, :cond_0

    .line 435
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 437
    :cond_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList$Callback;

    iget-object v1, v1, Landroid/os/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRegisteredCallbackCount()I
    .locals 2

    .line 387
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    if-eqz v1, :cond_0

    .line 389
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 391
    :cond_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRegisteredCallbackItem(I)Landroid/os/IInterface;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 410
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 411
    :try_start_0
    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    if-eqz v1, :cond_0

    .line 412
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 414
    :cond_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList$Callback;

    iget-object v1, v1, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist kill()V
    .locals 6

    .line 174
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "cbi":I
    :goto_0
    if-ltz v1, :cond_0

    .line 176
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList$Callback;

    .line 177
    .local v3, "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    iget-object v4, v3, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 175
    nop

    .end local v3    # "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 179
    .end local v1    # "cbi":I
    :cond_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 180
    iput-boolean v2, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    return-void
.end method

.method public whitelist onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 206
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 207
    return-void
.end method

.method public whitelist register(Landroid/os/IInterface;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 88
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 118
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-boolean v1, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 120
    monitor-exit v0

    return v2

    .line 123
    :cond_0
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;->logExcessiveCallbacks()V

    .line 124
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_1
    new-instance v3, Landroid/os/RemoteCallbackList$Callback;

    invoke-direct {v3, p0, p1, p2}, Landroid/os/RemoteCallbackList$Callback;-><init>(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 127
    .local v3, "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 128
    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 129
    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v2, 0x1

    :try_start_2
    monitor-exit v0

    return v2

    .line 131
    .end local v3    # "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return v2

    .line 134
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist unregister(Landroid/os/IInterface;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 155
    .local p0, "this":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList$Callback;

    .line 157
    .local v1, "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 158
    iget-object v3, v1, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 159
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 161
    :cond_0
    monitor-exit v0

    return v2

    .line 162
    .end local v1    # "cb":Landroid/os/RemoteCallbackList$Callback;, "Landroid/os/RemoteCallbackList<TE;>.Callback;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
