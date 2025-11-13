.class public Lcom/samsung/android/media/SemHEIFCodec;
.super Ljava/lang/Object;
.source "SemHEIFCodec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "15.0"
.end annotation


# static fields
.field public static final whitelist ENCODING_TYPE_JPEG_SQUEEZER:I = 0x1

.field private static final blacklist IMAGE_TYPE_COVER:I = 0x0

.field private static final blacklist IMAGE_TYPE_THUMBNAIL:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemHEIFCodec"

.field private static blacklist mLibraryLoaded:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    invoke-static {}, Lcom/samsung/android/media/SemHEIFCodec;->loadLibrary()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "decodeByteArray - mLibraryLoaded is false"

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

    if-eqz p3, :cond_2

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "decodeFile - mLibraryLoaded is false"

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

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

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
    invoke-static {v1, p1}, Lcom/samsung/android/media/SemHEIFCodec;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

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

.method public static whitelist decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

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

    invoke-static {v3, v6, v5, p1, v6}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static whitelist getExifData(Ljava/io/FileDescriptor;)[B
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "getExifData - mLibraryLoaded is false"

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
    invoke-static {v0}, Lcom/samsung/android/media/SemHEIFCodec;->getExifData(Ljava/io/InputStream;)[B

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

.method public static whitelist getExifData(Ljava/io/InputStream;)[B
    .locals 7

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "getExifData - mLibraryLoaded is false"

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

    invoke-static {v3, v6, v5}, Lcom/samsung/android/media/SemHEIFCodec;->native_getExifDataByteArray([BII)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static whitelist getExifData(Ljava/lang/String;)[B
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "getExifData - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFCodec;->native_getExifData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getExifData([BII)[B
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "getExifData - mLibraryLoaded is false"

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

    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemHEIFCodec;->native_getExifDataByteArray([BII)[B

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist getThumbnail(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "getThumbnail - mLibraryLoaded is false"

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
    invoke-static {v1, p1}, Lcom/samsung/android/media/SemHEIFCodec;->getThumbnail(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

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

.method public static whitelist getThumbnail(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "getThumbnail - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v2, :cond_2

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v4, v6, :cond_3

    invoke-virtual {v2, v3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    array-length v6, v4

    invoke-static {v4, v7, v6, p1, v0}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static whitelist getThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "getThumbnail - mLibraryLoaded is false"

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
    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getThumbnail([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "getThumbnail - mLibraryLoaded is false"

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
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static blacklist loadLibrary()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "heifcodec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z
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

    const-string v2, "SemHEIFCodec"

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

.method private static native blacklist native_decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist native_getExifData(Ljava/lang/String;)[B
.end method

.method private static native blacklist native_getExifDataByteArray([BII)[B
.end method

.method private static native blacklist native_transcode(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static whitelist transcode(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemHEIFCodec"

    const-string v2, "transcode - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemHEIFCodec;->native_transcode(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method
