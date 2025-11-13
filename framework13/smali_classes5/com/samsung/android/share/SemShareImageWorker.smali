.class public abstract Lcom/samsung/android/share/SemShareImageWorker;
.super Ljava/lang/Object;
.source "SemShareImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;
    }
.end annotation


# static fields
.field private static final blacklist MESSAGE_CLEAR:I = 0x0

.field private static final blacklist MESSAGE_CLOSE:I = 0x3

.field private static final blacklist MESSAGE_FLUSH:I = 0x2

.field private static final blacklist MESSAGE_INIT_DISK_CACHE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareImageWorker"


# instance fields
.field protected blacklist mPauseWork:Z

.field private final blacklist mPauseWorkLock:Ljava/lang/Object;

.field private blacklist mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mPauseWork:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist addBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 73
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/share/SemShareImageCache;->addBitmapToCache(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 81
    :cond_1
    return-void

    .line 74
    :cond_2
    :goto_0
    const-string v0, "SemShareImageWorker"

    const-string v1, "Key or bitmap is null for adding to cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public blacklist addImageCache(Landroid/app/FragmentManager;Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V
    .locals 4
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "cacheParams"    # Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 86
    invoke-static {p1, p2}, Lcom/samsung/android/share/SemShareImageCache;->getInstance(Landroid/app/FragmentManager;Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)Lcom/samsung/android/share/SemShareImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    .line 87
    new-instance v0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;-><init>(Lcom/samsung/android/share/SemShareImageWorker;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method public blacklist clearCache()V
    .locals 4

    .line 172
    new-instance v0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;-><init>(Lcom/samsung/android/share/SemShareImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    return-void
.end method

.method protected blacklist clearCacheInternal()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageCache;->clearCache()V

    .line 155
    :cond_0
    return-void
.end method

.method public blacklist closeCache()V
    .locals 4

    .line 182
    new-instance v0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;-><init>(Lcom/samsung/android/share/SemShareImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method protected blacklist closeCacheInternal()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageCache;->close()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    .line 168
    :cond_0
    return-void
.end method

.method public blacklist flushCache()V
    .locals 4

    .line 177
    new-instance v0, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;-><init>(Lcom/samsung/android/share/SemShareImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 178
    return-void
.end method

.method protected blacklist flushCacheInternal()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageCache;->flush()V

    .line 161
    :cond_0
    return-void
.end method

.method public blacklist getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    .local v0, "value":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {v1, p1}, Lcom/samsung/android/share/SemShareImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    if-nez v0, :cond_2

    .line 57
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/share/SemShareImageWorker;->mPauseWork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 60
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_1
    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 65
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    invoke-virtual {v1, p1}, Lcom/samsung/android/share/SemShareImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 65
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 69
    :cond_2
    :goto_2
    return-object v0
.end method

.method protected blacklist getImageCache()Lcom/samsung/android/share/SemShareImageCache;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    return-object v0
.end method

.method protected blacklist initDiskCacheInternal()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mSemShareImageCache:Lcom/samsung/android/share/SemShareImageCache;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageCache;->initDiskCache()V

    .line 149
    :cond_0
    return-void
.end method

.method public blacklist setExitTasksEarly()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/share/SemShareImageWorker;->setPauseWork(Z)V

    .line 92
    return-void
.end method

.method public blacklist setPauseWork(Z)V
    .locals 2
    .param p1, "pauseWork"    # Z

    .line 114
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/share/SemShareImageWorker;->mPauseWork:Z

    .line 116
    if-nez p1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 119
    :cond_0
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
