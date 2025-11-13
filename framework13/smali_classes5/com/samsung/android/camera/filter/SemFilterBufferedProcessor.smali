.class public final Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;
.super Ljava/lang/Object;
.source "SemFilterBufferedProcessor.java"


# static fields
.field public static final whitelist IMAGE_FORMAT_RGBA_8888:I = 0x0

.field public static final whitelist IMAGE_FORMAT_YUV_420_888:I = 0x1

.field private static final blacklist MAX_IMAGE_SIZE:I = 0x2000

.field private static final blacklist TAG:Ljava/lang/String; = "SemFilterBufferedProcessor"


# instance fields
.field private blacklist isInitialized:Z

.field private blacklist mNativeContext:J

.field private blacklist mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    const-string/jumbo v0, "secimaging.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_init()V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setup(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method private blacklist checkInputFilePermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 428
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, "currentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    return v2

    .line 437
    :cond_1
    return v0

    .line 429
    .end local v1    # "currentFile":Ljava/io/File;
    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist checkOutputFilePermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .line 448
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, "separatorPosition":I
    if-gez v1, :cond_1

    .line 454
    return v0

    .line 457
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 458
    return v0

    .line 461
    :cond_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "parentPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v4, "parentPathFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 464
    return v2

    .line 467
    :cond_3
    return v0

    .line 449
    .end local v1    # "separatorPosition":I
    .end local v3    # "parentPath":Ljava/lang/String;
    .end local v4    # "parentPathFile":Ljava/io/File;
    :cond_4
    :goto_0
    return v0
.end method

.method private static final native blacklist native_init()V
.end method

.method private native blacklist native_initialize()V
.end method

.method private native blacklist native_process_array([BIII)[B
.end method

.method private native blacklist native_process_array_stride([BIIIII)[B
.end method

.method private native blacklist native_process_array_stride_overwrite([BIIIIIZ)[B
.end method

.method private native blacklist native_process_bitmap(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private native blacklist native_process_bitmap_overwrite(Ljava/lang/Object;Z)Ljava/lang/Object;
.end method

.method private native blacklist native_process_buffer([III)[I
.end method

.method private native blacklist native_process_file(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native blacklist native_release()V
.end method

.method private native blacklist native_setEffect(Ljava/lang/String;)V
.end method

.method private native blacklist native_setEffect_internal(I)V
.end method

.method private native blacklist native_setEffect_parameter(Ljava/lang/String;)V
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method


# virtual methods
.method protected blacklist checkInitialized()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SCameraFilterContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist checkNotInitialized()V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SCameraFilterContext is already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist initialize()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkNotInitialized()V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_initialize()V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setInitialized(Z)V

    .line 101
    return-void
.end method

.method protected blacklist isInitialized()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    return v0
.end method

.method public whitelist processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "data"    # Landroid/graphics/Bitmap;

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 203
    if-eqz p1, :cond_3

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2000

    if-gt v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_1

    .line 213
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    .local v0, "data_ARGB888":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 218
    .local v1, "data_result":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    const/4 v0, 0x0

    .line 221
    return-object v1

    .line 224
    .end local v1    # "data_result":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 227
    .end local v0    # "data_ARGB888":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 208
    const-string v1, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "overwrite"    # Z

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 243
    if-eqz p1, :cond_4

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2000

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 253
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    .local v0, "data_ARGB888":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap_overwrite(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    const/4 v0, 0x0

    .line 261
    return-object v3

    .line 264
    :cond_0
    return-object v3

    .line 267
    .end local v0    # "data_ARGB888":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap_overwrite(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "bitmap":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 270
    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1

    .line 272
    :cond_2
    return-object v3

    .line 248
    .end local v0    # "bitmap":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 248
    const-string v1, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "inputFileName"    # Ljava/lang/String;
    .param p2, "outputFileName"    # Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 317
    if-eqz p1, :cond_5

    .line 321
    if-eqz p2, :cond_4

    .line 325
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInputFilePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    invoke-direct {p0, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkOutputFilePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 334
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 335
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 337
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v2, v1, :cond_1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v2, v1, :cond_1

    .line 342
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v5, 0x2000

    if-gt v2, v5, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, v5, :cond_0

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_file(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void

    .line 343
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 344
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    const/4 v1, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    .line 343
    const-string v1, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 339
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 338
    const-string v1, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outputFileName must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputFileName must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processImage([BIII)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imageFormat"    # I

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 364
    if-eqz p1, :cond_0

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array([BIII)[B

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processImage([BIIIII)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imageFormat"    # I
    .param p5, "stride"    # I
    .param p6, "sliceHeight"    # I

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 388
    if-eqz p1, :cond_0

    .line 392
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array_stride([BIIIII)[B

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processImage([BIIIIIZ)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imageFormat"    # I
    .param p5, "stride"    # I
    .param p6, "sliceHeight"    # I
    .param p7, "overwrite"    # Z

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 413
    if-eqz p1, :cond_0

    .line 417
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array_stride_overwrite([BIIIIIZ)[B

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processImage([III)[I
    .locals 5
    .param p1, "data"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 292
    if-eqz p1, :cond_1

    .line 296
    const/16 v0, 0x2000

    if-gt p2, v0, :cond_0

    if-gt p3, v0, :cond_0

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_buffer([III)[I

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 297
    const-string v0, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_release()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setInitialized(Z)V

    .line 116
    return-void
.end method

.method public whitelist setFilter(Lcom/samsung/android/camera/filter/SemFilter;)V
    .locals 4
    .param p1, "semFilter"    # Lcom/samsung/android/camera/filter/SemFilter;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 130
    if-eqz p1, :cond_4

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 136
    .local v0, "semFilterImpl":Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
    const/4 v1, 0x0

    .line 138
    .local v1, "isEffectChanged":Z
    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    if-nez v2, :cond_0

    .line 139
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 140
    const/4 v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 143
    const/4 v1, 0x1

    .line 146
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifierIdx()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifierIdx()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect_internal(I)V

    goto :goto_1

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect(Ljava/lang/String;)V

    .line 153
    :cond_3
    :goto_1
    return-void

    .line 131
    .end local v0    # "semFilterImpl":Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
    .end local v1    # "isEffectChanged":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "semFilter must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFilterParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 183
    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect_parameter(Ljava/lang/String;)V

    .line 188
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setInitialized(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    .line 62
    return-void
.end method
