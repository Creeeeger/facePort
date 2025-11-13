.class public Lcom/samsung/android/media/InternalRegionDecoder;
.super Ljava/lang/Object;
.source "InternalRegionDecoder.java"


# static fields
.field public static final blacklist IMAGE_TYPE_COVER:I = 0x0

.field public static final blacklist IMAGE_TYPE_GAINMAP:I = 0x2

.field public static final blacklist IMAGE_TYPE_THUMBNAIL:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "InternalRegionDecoder"

.field private static blacklist mLibraryLoaded:Z


# instance fields
.field private blacklist mGainXmpBuf:[B

.field private blacklist mHeight:I

.field private blacklist mNativeBitmapRegionDecoder:J

.field private final blacklist mNativeLock:Ljava/lang/Object;

.field private blacklist mRecycled:Z

.field private blacklist mWidth:I

.field private blacklist mXmpBuf:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/InternalRegionDecoder;->mLibraryLoaded:Z

    invoke-static {}, Lcom/samsung/android/media/InternalRegionDecoder;->loadLibrary()V

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mWidth:I

    iput v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mXmpBuf:[B

    iput-object v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mGainXmpBuf:[B

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeBitmapRegionDecoder:J

    iput-boolean v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private blacklist checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist loadLibrary()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/InternalRegionDecoder;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "sembitmapregiondec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/InternalRegionDecoder;->mLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load the native library : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InternalRegionDecoder"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static native blacklist nativeClean(J)V
.end method

.method private static native blacklist nativeDecodeGainRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeDecodePhotoHdrRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeGetHeight(J)I
.end method

.method private static native blacklist nativeGetWidth(J)I
.end method

.method private static native blacklist nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/InternalRegionDecoder;
.end method

.method private static native blacklist nativeNewInstance([BII)Lcom/samsung/android/media/InternalRegionDecoder;
.end method

.method public static blacklist newInstance(Ljava/io/FileDescriptor;)Lcom/samsung/android/media/InternalRegionDecoder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "InternalRegionDecoder"

    const-string v2, "newInstance FD e"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/media/InternalRegionDecoder;->newInstance(Ljava/io/InputStream;)Lcom/samsung/android/media/InternalRegionDecoder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "fd is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist newInstance(Ljava/io/InputStream;)Lcom/samsung/android/media/InternalRegionDecoder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "InternalRegionDecoder"

    const-string v1, "newInstance Stream e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    array-length v4, v2

    invoke-static {v2, v5, v4}, Lcom/samsung/android/media/InternalRegionDecoder;->newInstance([BII)Lcom/samsung/android/media/InternalRegionDecoder;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist newInstance(Ljava/lang/String;)Lcom/samsung/android/media/InternalRegionDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "InternalRegionDecoder"

    const-string v1, "newInstance File e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/InternalRegionDecoder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "pathName is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newInstance([BII)Lcom/samsung/android/media/InternalRegionDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "InternalRegionDecoder"

    const-string v1, "newInstance ByteArray e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/InternalRegionDecoder;->nativeNewInstance([BII)Lcom/samsung/android/media/InternalRegionDecoder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist decodeGainRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "InternalRegionDecoder"

    const-string v1, "decodeGainRegion e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/InternalRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-eqz p2, :cond_2

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v2, v4

    add-int v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v3, v4

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_2

    :cond_1
    const-string v4, "InternalRegionDecoder"

    const-string v5, "RegionDecode Input Bitmap error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object v4

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v1, v6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v1, v7

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/media/InternalRegionDecoder;->nativeDecodeGainRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rectangle is outside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist decodePhotoHdrRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "InternalRegionDecoder"

    const-string v1, "decodeGainRegion e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/InternalRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-eqz p2, :cond_2

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v2, v4

    add-int v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v3, v4

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_2

    :cond_1
    const-string v4, "InternalRegionDecoder"

    const-string v5, "RegionDecode Input Bitmap error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object v4

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v1, v6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v1, v7

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/media/InternalRegionDecoder;->nativeDecodePhotoHdrRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rectangle is outside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "InternalRegionDecoder"

    const-string v1, "decodeRegion e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/InternalRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-eqz p2, :cond_2

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v2, v4

    add-int v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v3, v4

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_2

    :cond_1
    const-string v4, "InternalRegionDecoder"

    const-string v5, "RegionDecode Input Bitmap error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object v4

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v1, v6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v1, v7

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/media/InternalRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rectangle is outside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getHeight()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getHeight called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/InternalRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mHeight:I

    monitor-exit v0

    return v1

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/InternalRegionDecoder;->nativeGetHeight(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mHeight:I

    iget v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mHeight:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getWidth()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getWidth called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/InternalRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mWidth:I

    monitor-exit v0

    return v1

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/InternalRegionDecoder;->nativeGetWidth(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mWidth:I

    iget v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mWidth:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final blacklist isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public blacklist recycle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mRecycled:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/InternalRegionDecoder;->nativeClean(J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/InternalRegionDecoder;->mRecycled:Z

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
