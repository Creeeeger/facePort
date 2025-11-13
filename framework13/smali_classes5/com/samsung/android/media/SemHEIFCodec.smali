.class public Lcom/samsung/android/media/SemHEIFCodec;
.super Ljava/lang/Object;
.source "SemHEIFCodec.java"


# static fields
.field public static final whitelist ENCODING_TYPE_JPEG_SQUEEZER:I = 0x1

.field private static final blacklist IMAGE_TYPE_COVER:I = 0x0

.field private static final blacklist IMAGE_TYPE_THUMBNAIL:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemHEIFCodec"

.field private static blacklist mLibraryLoaded:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    .line 41
    invoke-static {}, Lcom/samsung/android/media/SemHEIFCodec;->loadLibrary()V

    .line 42
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 216
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 217
    const-string v0, "SemHEIFCodec"

    const-string v2, "decodeByteArray - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v1

    .line 221
    :cond_0
    if-nez p0, :cond_1

    .line 222
    return-object v1

    .line 224
    :cond_1
    or-int v0, p1, p2

    if-ltz v0, :cond_3

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_3

    .line 228
    if-eqz p3, :cond_2

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    .line 229
    const/4 v0, 0x1

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 232
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 225
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 100
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "SemHEIFCodec"

    const-string v2, "decodeFile - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v1

    .line 105
    :cond_0
    if-nez p0, :cond_1

    .line 106
    return-object v1

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    .line 109
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 131
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "SemHEIFCodec"

    const-string v2, "decodeFileDescriptor - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-object v1

    .line 136
    :cond_0
    if-nez p0, :cond_1

    .line 137
    return-object v1

    .line 139
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    .line 140
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 145
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/samsung/android/media/SemHEIFCodec;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 147
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 145
    .restart local v1    # "fis":Ljava/io/FileInputStream;
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

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 147
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 171
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "SemHEIFCodec"

    const-string v2, "decodeStream - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v1

    .line 176
    :cond_0
    if-nez p0, :cond_1

    .line 177
    return-object v1

    .line 179
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    .line 180
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 182
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 186
    .local v2, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    .line 187
    invoke-virtual {v0, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 190
    .local v3, "inBytes":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 192
    array-length v5, v3

    invoke-static {v3, v6, v5, p1, v6}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 193
    .end local v3    # "inBytes":[B
    .end local v4    # "read":I
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    return-object v1
.end method

.method public static whitelist getExifData(Ljava/lang/String;)[B
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 265
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 266
    const-string v0, "SemHEIFCodec"

    const-string v2, "getExifData - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v1

    .line 270
    :cond_0
    if-nez p0, :cond_1

    .line 271
    return-object v1

    .line 273
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFCodec;->native_getExifData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 243
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "SemHEIFCodec"

    const-string v2, "getThumbnail - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v1

    .line 248
    :cond_0
    if-nez p0, :cond_1

    .line 249
    return-object v1

    .line 251
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v1, :cond_2

    .line 252
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemHEIFCodec;->native_decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist loadLibrary()V
    .locals 3

    .line 45
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    .line 47
    :try_start_0
    const-string v0, "heifcodec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
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

    .line 53
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
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

.method private static native blacklist native_transcode(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static whitelist transcode(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "imageSrcPath"    # Ljava/lang/String;
    .param p1, "imageDstPath"    # Ljava/lang/String;
    .param p2, "encodingType"    # I

    .line 74
    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "SemHEIFCodec"

    const-string/jumbo v2, "transcode - mLibraryLoaded is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v1

    .line 79
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemHEIFCodec;->native_transcode(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 80
    :cond_2
    :goto_0
    return v1
.end method
