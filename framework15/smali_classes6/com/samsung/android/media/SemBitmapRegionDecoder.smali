.class public Lcom/samsung/android/media/SemBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "SemBitmapRegionDecoder.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemBitmapRegionDecoder"

.field private static blacklist mLibraryLoaded:Z


# instance fields
.field private blacklist mGainBuf:[B

.field private blacklist mGainRD:Lcom/samsung/android/media/InternalRegionDecoder;

.field private blacklist mHeight:I

.field private blacklist mNativeBitmapRegionDecoder:J

.field private final blacklist mNativeLock:Ljava/lang/Object;

.field private blacklist mRecycled:Z

.field private blacklist mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mLibraryLoaded:Z

    invoke-static {}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->loadLibrary()V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/InternalRegionDecoder;

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/InternalRegionDecoder;

    iput-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private blacklist checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist loadLibrary()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mLibraryLoaded:Z
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

    const-string v2, "SemBitmapRegionDecoder"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static whitelist newInstance(Ljava/io/FileDescriptor;)Lcom/samsung/android/media/SemBitmapRegionDecoder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Lcom/samsung/android/media/SemBitmapRegionDecoder;

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

.method public static whitelist newInstance(Ljava/io/InputStream;)Lcom/samsung/android/media/SemBitmapRegionDecoder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

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

    invoke-static {v2, v5, v4}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->newInstance([BII)Lcom/samsung/android/media/SemBitmapRegionDecoder;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "inputStream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist newInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemBitmapRegionDecoder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "newInstance file e"

    const-string v1, "SemBitmapRegionDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/media/InternalRegionDecoder;->newInstance(Ljava/lang/String;)Lcom/samsung/android/media/InternalRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    iget-object v2, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    if-nez v2, :cond_0

    const-string v2, "newInstance file fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "pathName is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist newInstance([BII)Lcom/samsung/android/media/SemBitmapRegionDecoder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    or-int v0, p1, p2

    if-ltz v0, :cond_1

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1

    const-string v0, "newInstance byteArray e"

    const-string v1, "SemBitmapRegionDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/InternalRegionDecoder;->newInstance([BII)Lcom/samsung/android/media/InternalRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    iget-object v2, v0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    if-nez v2, :cond_0

    const-string v2, "newInstance byteArray fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "decode regioin:e"

    const-string v1, "SemBitmapRegionDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRegionDecoder is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_7

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_7

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_7

    if-eqz p2, :cond_3

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int v5, v3, v0

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v0

    add-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v0

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_3

    :cond_2
    const-string v2, "RegionDecode Input Bitmap error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :cond_3
    if-eqz p2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opt.semInApplyPhotoHdr:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", opt.semInCreateGainmap:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    const-string v3, "decode region"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    iget-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    if-eqz v3, :cond_5

    const-string v3, "decodePhotoHdrRegion opt.semInApplyPhotoHdr true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/media/InternalRegionDecoder;->decodePhotoHdrRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v3, "decodeRegion opt.semInApplyPhotoHdr false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/media/InternalRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_6

    const-string v3, "coverBitmap null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_6
    const-string v2, "decode regioin:x"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is outside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->recycle()V
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

.method public whitelist getHeight()I
    .locals 1

    const-string v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/InternalRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    iget v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mHeight:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    const-string v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/InternalRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    iget v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mWidth:I

    return v0
.end method

.method public final whitelist isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public whitelist recycle()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRegionDecoder:Lcom/samsung/android/media/InternalRegionDecoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/InternalRegionDecoder;->recycle()V

    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/InternalRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mGainRD:Lcom/samsung/android/media/InternalRegionDecoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/InternalRegionDecoder;->recycle()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/SemBitmapRegionDecoder;->mRecycled:Z

    :cond_1
    return-void
.end method
