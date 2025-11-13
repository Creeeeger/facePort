.class public Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SemShareRecyclingBitmapDrawable.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist TAG:Ljava/lang/String; = "RecyclingBitmapDrawable"


# instance fields
.field private blacklist mCacheRefCount:I

.field private blacklist mDisplayRefCount:I

.field private blacklist mHasBeenDisplayed:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mCacheRefCount:I

    .line 36
    iput v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 43
    return-void
.end method

.method private declared-synchronized blacklist checkState()V
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mCacheRefCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mDisplayRefCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mHasBeenDisplayed:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->hasValidBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local p0    # "this":Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist hasValidBitmap()Z
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 105
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public blacklist setIsCached(Z)V
    .locals 1
    .param p1, "isCached"    # Z

    .line 76
    monitor-enter p0

    .line 77
    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    iget v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mCacheRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mCacheRefCount:I

    goto :goto_0

    .line 80
    :cond_0
    iget v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mCacheRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mCacheRefCount:I

    .line 82
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->checkState()V

    .line 87
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist setIsDisplayed(Z)V
    .locals 2
    .param p1, "isDisplayed"    # Z

    .line 54
    monitor-enter p0

    .line 55
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    iget v1, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mDisplayRefCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mHasBeenDisplayed:Z

    goto :goto_0

    .line 59
    :cond_0
    iget v1, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mDisplayRefCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 61
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->checkState()V

    .line 66
    return-void

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
