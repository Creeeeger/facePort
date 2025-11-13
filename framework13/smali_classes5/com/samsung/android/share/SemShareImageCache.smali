.class public Lcom/samsung/android/share/SemShareImageCache;
.super Ljava/lang/Object;
.source "SemShareImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;,
        Lcom/samsung/android/share/SemShareImageCache$RetainFragment;,
        Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_DISK_CACHE_ENABLED:Z = true

.field public static final blacklist DEFAULT_DISK_CACHE_SIZE:I = 0x1e00000

.field private static final blacklist DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final blacklist DEFAULT_MEM_CACHE_ENABLED:Z = true

.field public static final blacklist DEFAULT_MEM_CACHE_SIZE:I = 0x7800

.field public static final blacklist ENHANCE_IMAGE_CACHE_DIR:Ljava/lang/String; = "cache"

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareImageCache"


# instance fields
.field private blacklist mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

.field private final blacklist mDiskCacheLock:Ljava/lang/Object;

.field private blacklist mDiskCacheStarting:Z

.field private blacklist mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReusableBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDiskCacheLock(Lcom/samsung/android/share/SemShareImageCache;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReusableBitmaps(Lcom/samsung/android/share/SemShareImageCache;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareImageCache;->mReusableBitmaps:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemShareDiskLruCache(Lcom/samsung/android/share/SemShareImageCache;)Lcom/samsung/android/share/SemShareDiskLruCache;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteBitmapToCache(Lcom/samsung/android/share/SemShareImageCache;Landroid/graphics/Bitmap;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SemShareImageCache;->writeBitmapToCache(Landroid/graphics/Bitmap;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V
    .locals 1
    .param p1, "cacheParams"    # Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheStarting:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareImageCache;->init(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V

    .line 75
    return-void
.end method

.method private static blacklist bytesToHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 443
    .local v3, "aByte":B
    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "hex":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 445
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .end local v3    # "aByte":B
    .end local v4    # "hex":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/samsung/android/share/SemShareImageCache$RetainFragment;
    .locals 3
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .line 523
    const-string v0, "SemShareImageCache"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;

    .line 526
    .local v1, "mRetainFragment":Lcom/samsung/android/share/SemShareImageCache$RetainFragment;
    if-nez v1, :cond_0

    .line 527
    new-instance v2, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;

    invoke-direct {v2}, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;-><init>()V

    move-object v1, v2

    .line 528
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 531
    :cond_0
    return-object v1
.end method

.method public static blacklist getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0

    .line 468
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 469
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0

    .line 473
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static blacklist getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .line 417
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    invoke-static {}, Lcom/samsung/android/share/SemShareImageCache;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 418
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/share/SemShareImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 419
    :goto_1
    nop

    .line 421
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/app/FragmentManager;Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)Lcom/samsung/android/share/SemShareImageCache;
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "cacheParams"    # Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 80
    invoke-static {p0}, Lcom/samsung/android/share/SemShareImageCache;->findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/samsung/android/share/SemShareImageCache$RetainFragment;

    move-result-object v0

    .line 82
    .local v0, "mRetainFragment":Lcom/samsung/android/share/SemShareImageCache$RetainFragment;
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareImageCache;

    .line 84
    .local v1, "imageCache":Lcom/samsung/android/share/SemShareImageCache;
    if-nez v1, :cond_0

    .line 85
    new-instance v2, Lcom/samsung/android/share/SemShareImageCache;

    invoke-direct {v2, p1}, Lcom/samsung/android/share/SemShareImageCache;-><init>(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V

    move-object v1, v2

    .line 86
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-object v1
.end method

.method public static blacklist getUsableSpace(Ljava/io/File;)J
    .locals 5
    .param p0, "path"    # Ljava/io/File;

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 505
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0

    .line 507
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static blacklist hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 431
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 432
    .local v0, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 433
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/share/SemShareImageCache;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 436
    .local v0, "cacheKey":Ljava/lang/String;
    goto :goto_0

    .line 434
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 437
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private blacklist init(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V
    .locals 2
    .param p1, "cacheParams"    # Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 96
    iget-boolean v0, p1, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mReusableBitmaps:Ljava/util/Set;

    .line 113
    new-instance v0, Lcom/samsung/android/share/SemShareImageCache$1;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget v1, v1, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/share/SemShareImageCache$1;-><init>(Lcom/samsung/android/share/SemShareImageCache;I)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    .line 149
    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareImageCache;->initDiskCache()V

    .line 153
    :cond_1
    return-void
.end method

.method public static blacklist isExternalStorageRemovable()Z
    .locals 2

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 484
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0

    .line 486
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist writeBitmapToCache(Landroid/graphics/Bitmap;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "editor"    # Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    move-object v0, v2

    .line 229
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v0, v2

    .line 230
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    nop

    .line 236
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v2

    .line 230
    :goto_0
    return v1

    .line 234
    :catchall_0
    move-exception v1

    .line 235
    if-eqz v0, :cond_0

    .line 236
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 238
    :catch_1
    move-exception v2

    goto :goto_2

    .line 240
    :cond_0
    :goto_1
    nop

    .line 241
    :goto_2
    throw v1

    .line 231
    :catch_2
    move-exception v2

    .line 235
    if-eqz v0, :cond_1

    .line 236
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 238
    :catch_3
    move-exception v2

    .line 241
    goto :goto_4

    .line 240
    :cond_1
    :goto_3
    nop

    .line 242
    :goto_4
    return v1
.end method


# virtual methods
.method public blacklist addBitmapToCache(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    .line 198
    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 204
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 208
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    new-instance v0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 212
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_3

    .line 213
    instance-of v1, v0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;

    if-eqz v1, :cond_2

    .line 216
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->setIsCached(Z)V

    .line 218
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added bitmap to mem cache Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemShareImageCache"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_3
    new-instance v1, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;-><init>(Lcom/samsung/android/share/SemShareImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 222
    .local v1, "bitmapCacheTask":Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    return-void

    .line 199
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bitmapCacheTask":Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;
    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist clearCache()V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheStarting:Z

    .line 282
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 284
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->delete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v2, "SemShareImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException occured:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SemShareImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    nop

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    .line 295
    :cond_1
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist close()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 325
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->close()V

    .line 327
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :cond_0
    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "SemShareImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist flush()V
    .locals 5

    .line 303
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 306
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "SemShareImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .line 347
    invoke-static {p1}, Lcom/samsung/android/share/SemShareImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "key":Ljava/lang/String;
    const-string v1, "SemShareImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmapFromDiskCache for key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 352
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    :goto_1
    goto :goto_0

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 358
    const/4 v4, 0x0

    .line 360
    .local v4, "snapshot":Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->get(Ljava/lang/String;)Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v2

    .line 361
    if-nez v4, :cond_2

    .line 362
    nop

    .line 372
    if-eqz v4, :cond_1

    .line 373
    :try_start_4
    invoke-virtual {v4}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->close()V

    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 362
    return-object v3

    .line 364
    :cond_2
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v4, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 365
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_4

    .line 366
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v6, 0x2000

    invoke-direct {v5, v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 367
    .local v5, "bufferedInputStream":Ljava/io/BufferedInputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 372
    if-eqz v4, :cond_3

    .line 373
    :try_start_6
    invoke-virtual {v4}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->close()V

    :cond_3
    monitor-exit v1

    .line 367
    return-object v3

    .line 372
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :cond_4
    if-eqz v4, :cond_6

    .line 373
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 372
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 369
    :catch_1
    move-exception v2

    .line 370
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "SemShareImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBitmapFromDiskCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 372
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_6

    .line 373
    goto :goto_2

    .line 372
    :goto_3
    if-eqz v4, :cond_5

    .line 373
    :try_start_8
    invoke-virtual {v4}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->close()V

    .line 375
    :cond_5
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/share/SemShareImageCache;
    .end local p1    # "data":Ljava/lang/String;
    throw v2

    .line 377
    .end local v4    # "snapshot":Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareImageCache;
    .restart local p1    # "data":Ljava/lang/String;
    :cond_6
    :goto_4
    monitor-exit v1

    return-object v3

    .line 378
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2
.end method

.method public blacklist getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "memValue":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 263
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist initDiskCache()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget-object v1, v1, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 166
    .local v1, "diskCacheDir":Ljava/io/File;
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget-boolean v2, v2, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 170
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/share/SemShareImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget v4, v4, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 172
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget v2, v2, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheSize:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v4, v4, v2, v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->open(Ljava/io/File;IIJ)Lcom/samsung/android/share/SemShareDiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 179
    const-string v3, "SemShareImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDiskCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v1    # "diskCacheDir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheStarting:Z

    .line 185
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
