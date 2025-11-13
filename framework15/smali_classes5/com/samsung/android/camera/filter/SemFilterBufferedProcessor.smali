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

    const-string/jumbo v0, "secimaging.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_init()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist checkInputFilePermission(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist checkOutputFilePermission(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return v0

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

    return v0

    :cond_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    return v0

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

    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SCameraFilterContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist checkNotInitialized()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SCameraFilterContext is already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist initialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkNotInitialized()V

    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_initialize()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setInitialized(Z)V

    return-void
.end method

.method protected blacklist isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    return v0
.end method

.method public whitelist processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x2000

    if-gt v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x2000

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap_overwrite(Ljava/lang/Object;Z)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    return-object v3

    :cond_0
    return-object v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap_overwrite(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1

    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInputFilePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkOutputFilePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v2, v1, :cond_1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v2, v1, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_file(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input file does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outputFileName must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputFileName must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processImage([BIII)[B
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    if-lt p3, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p2, v0, :cond_2

    if-gt p3, v0, :cond_2

    const-string v0, "Image Buffer Size is not valid."

    packed-switch p4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image Format is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    mul-int v1, p2, p3

    add-int/lit8 v2, p2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    array-length v4, p1

    if-lt v4, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    array-length v2, p1

    if-lt v2, v1, :cond_1

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array([BIII)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist processImage([BIIIII)[B
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_8

    const-string v0, "Image with size (w=%d, h=%d) is not valid."

    const/4 v1, 0x1

    if-lt p2, v1, :cond_7

    if-lt p3, v1, :cond_7

    const/16 v2, 0x2000

    if-gt p2, v2, :cond_6

    if-gt p3, v2, :cond_6

    if-lt p5, p2, :cond_5

    if-lt p6, p3, :cond_4

    if-lt p5, v1, :cond_3

    if-lt p6, v1, :cond_3

    if-gt p5, v2, :cond_2

    if-gt p6, v2, :cond_2

    const-string v0, "Image Buffer Size is not valid."

    packed-switch p4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image Format is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    mul-int v1, p5, p6

    add-int/lit8 v2, p5, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    array-length v4, p1

    if-lt v4, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    array-length v2, p1

    if-lt v2, v1, :cond_1

    :goto_0
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array_stride([BIIIII)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image resolution(w=%d, h=%d) is greater thant the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image having sliceHeight (sliceHeight=%d) lesser than height (height=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image having stride (stride=%d) lesser than width (width=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist processImage([BIIIIIZ)[B
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_8

    const-string v0, "Image with size (w=%d, h=%d) is not valid."

    const/4 v1, 0x1

    if-lt p2, v1, :cond_7

    if-lt p3, v1, :cond_7

    const/16 v2, 0x2000

    if-gt p2, v2, :cond_6

    if-gt p3, v2, :cond_6

    if-lt p5, p2, :cond_5

    if-lt p6, p3, :cond_4

    if-lt p5, v1, :cond_3

    if-lt p6, v1, :cond_3

    if-gt p5, v2, :cond_2

    if-gt p6, v2, :cond_2

    const-string v0, "Image Buffer Size is not valid."

    packed-switch p4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image Format is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    mul-int v1, p5, p6

    add-int/lit8 v2, p5, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    array-length v4, p1

    if-lt v4, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    array-length v2, p1

    if-lt v2, v1, :cond_1

    :goto_0
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array_stride_overwrite([BIIIIIZ)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image resolution(w=%d, h=%d) is greater thant the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image having sliceHeight (sliceHeight=%d) lesser than height (height=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image having stride (stride=%d) lesser than width (width=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist processImage([III)[I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    if-lt p3, v0, :cond_2

    const/16 v0, 0x2000

    if-gt p2, v0, :cond_1

    if-gt p3, v0, :cond_1

    mul-int v0, p2, p3

    array-length v1, p1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_buffer([III)[I

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Image Buffer Size is not valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setInitialized(Z)V

    return-void
.end method

.method public whitelist setFilter(Lcom/samsung/android/camera/filter/SemFilter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifierIdx()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifierIdx()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect_internal(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "semFilter must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFilterParameter(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect_parameter(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    return-void
.end method
