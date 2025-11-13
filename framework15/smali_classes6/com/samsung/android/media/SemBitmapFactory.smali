.class public Lcom/samsung/android/media/SemBitmapFactory;
.super Ljava/lang/Object;
.source "SemBitmapFactory.java"


# static fields
.field private static final blacklist IMAGE_TYPE_COVER:I = 0x0

.field private static final blacklist IMAGE_TYPE_GAINMAP:I = 0x2

.field private static final blacklist IMAGE_TYPE_THUMBNAIL:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemBitmapFactory"

.field private static blacklist mLibraryLoaded:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const-string v0, "loadLibrary"

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/media/SemBitmapFactory;->loadLibrary()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    const-string v2, "SemBitmapFactory"

    if-nez v0, :cond_0

    const-string v0, "decodeByteArray - mLibraryLoaded is false"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v0, "decodeByteArray e"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opts.semInApplyPhotoHdr:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p3, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  opts.semInCreateGainmap:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p3, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v3, :cond_2

    iget-object v0, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "set inBitmap Gainmap to null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot reuse a recycled Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmaps with Config.HARDWARE are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "opts null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    if-nez p0, :cond_5

    return-object v1

    :cond_5
    or-int v0, p1, p2

    if-ltz v0, :cond_8

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_8

    if-eqz p3, :cond_6

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_6
    if-eqz p3, :cond_7

    iget-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    if-eqz v0, :cond_7

    const-string v0, "decodeByteArray opts.semInApplyPhotoHdr true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemBitmapFactory;->decodePhotoHdrByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "decodeByteArray opts.semInApplyPhotoHdr decode x"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemBitmapFactory;->native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    const-string v2, "SemBitmapFactory"

    if-nez v0, :cond_0

    const-string v0, "decodeFile - mLibraryLoaded is false"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v0, "decodeFile e"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opts.semInApplyPhotoHdr:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  opts.semInCreateGainmap:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->semInCreateGainmap:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v3, :cond_2

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "set inBitmap Gainmap to null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot reuse a recycled Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmaps with Config.HARDWARE are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "opts null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    if-nez p0, :cond_5

    return-object v1

    :cond_5
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_6
    if-eqz p1, :cond_7

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->semInApplyPhotoHdr:Z

    if-eqz v0, :cond_7

    const-string v0, "decodeFile opts.semInApplyPhotoHdr true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodePhotoHdrFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "decodeFile opts.semInApplyPhotoHdr x"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemBitmapFactory;->native_decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "decodeFileDescriptor - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method private static blacklist decodePhotoHdrByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemBitmapFactory;->native_decodePhotoHdrByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    if-nez v0, :cond_0

    const-string v2, "SemBitmapFactory"

    const-string v3, "coverBitmap null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private static blacklist decodePhotoHdrFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/media/SemBitmapFactory;->native_decodePhotoHdrFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    if-nez v0, :cond_0

    const-string v2, "SemBitmapFactory"

    const-string v3, "coverBitmap null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "decodeStream - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    invoke-virtual {v0, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    array-length v5, v3

    invoke-static {v3, v6, v5, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static whitelist decodeThumbnailByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "decodeThumbnailByteArray - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    or-int v0, p1, p2

    if-ltz v0, :cond_3

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v1, :cond_2

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemBitmapFactory;->native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist decodeThumbnailFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "decodeThumbnailFile - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v1, :cond_2

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemBitmapFactory;->native_decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeThumbnailFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "decodeThumbnailFileDescriptor - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodeThumbnailStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public static whitelist decodeThumbnailStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "decodeThumbnailStream - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    invoke-virtual {v0, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    array-length v5, v3

    invoke-static {v3, v6, v5, p1}, Lcom/samsung/android/media/SemBitmapFactory;->decodeThumbnailByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static whitelist getExifDataByteArray([BII)[B
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "getExifDataByteArray - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    or-int v0, p1, p2

    if-ltz v0, :cond_2

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemBitmapFactory;->native_getExifDataByteArray([BII)[B

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist getExifDataFile(Ljava/lang/String;)[B
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "getExifDataFile - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemBitmapFactory;->native_getExifData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getExifDataFileDescriptor(Ljava/io/FileDescriptor;)[B
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "getExifDataFileDescriptor - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/media/SemBitmapFactory;->getExifDataStream(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static whitelist getExifDataStream(Ljava/io/InputStream;)[B
    .locals 7

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "getExifDataStream - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_2

    invoke-virtual {v0, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    array-length v5, v3

    invoke-static {v3, v6, v5}, Lcom/samsung/android/media/SemBitmapFactory;->getExifDataByteArray([BII)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static greylist getIccDataByteArray([BII)[B
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "getIccDataByteArray - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    or-int v0, p1, p2

    if-ltz v0, :cond_2

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/media/SemBitmapFactory;->native_getIccDataByteArray([BIII)[B

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static greylist getIccDataFile(Ljava/lang/String;)[B
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemBitmapFactory"

    const-string v2, "getIccDataFile - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/media/SemBitmapFactory;->native_getIccData(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist loadLibrary()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "sembitmapfactory_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/SemBitmapFactory;->mLibraryLoaded:Z
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

    const-string v2, "SemBitmapFactory"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static native blacklist native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist native_decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist native_decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist native_decodePhotoHdrByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist native_decodePhotoHdrFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist native_decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist native_getExifData(Ljava/lang/String;)[B
.end method

.method private static native blacklist native_getExifDataByteArray([BII)[B
.end method

.method private static native blacklist native_getIccData(Ljava/lang/String;I)[B
.end method

.method private static native blacklist native_getIccDataByteArray([BIII)[B
.end method

.method private static native blacklist native_getXmpData(Ljava/lang/String;I)[B
.end method

.method private static native blacklist native_getXmpDataByteArray([BIII)[B
.end method
