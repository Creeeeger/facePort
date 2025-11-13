.class public Lcom/samsung/android/media/imagecrop/SemImageCrop;
.super Ljava/lang/Object;
.source "SemImageCrop.java"


# static fields
.field private static final blacklist DEFAULT_HEADER_SIZE:I = 0x20

.field private static final blacklist HEX_ARRAY:[C

.field public static final whitelist IMAGE_FILE_FORMAT_HEIC:I = 0x2

.field public static final whitelist IMAGE_FILE_FORMAT_JPEG:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemImageCrop"

.field private static blacklist hasHevcEncoder:Z

.field private static blacklist instance:Lcom/samsung/android/media/imagecrop/SemImageCrop;

.field private static blacklist isSupport:Z

.field private static blacklist isSupportHeifCapture:Z


# instance fields
.field private blacklist mNativeHandle:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupportHeifCapture:Z

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/imagecrop/SemImageCrop;->HEX_ARRAY:[C

    :try_start_0
    const-string v1, "semimagecrop_jni.media.samsung"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupport:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupport:Z

    :goto_0
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "video/hevc"

    invoke-static {v0}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasCodec(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasHevcEncoder:Z

    invoke-direct {p0}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->nativeSetup()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->mNativeHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemImageCrop"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist bytesToHex([BI)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p1

    :try_start_0
    array-length v1, p0

    if-ge v1, p1, :cond_1

    array-length v1, p0

    move v0, v1

    :cond_1
    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0xc

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lcom/samsung/android/media/imagecrop/SemImageCrop;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/samsung/android/media/imagecrop/SemImageCrop;->HEX_ARRAY:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    add-int/lit8 v5, v3, 0x2

    const/16 v6, 0x20

    aput-char v6, v1, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const-string v0, "0:null"

    return-object v0
.end method

.method public static whitelist getInstance()Lcom/samsung/android/media/imagecrop/SemImageCrop;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupport:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->instance:Lcom/samsung/android/media/imagecrop/SemImageCrop;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;

    invoke-direct {v0}, Lcom/samsung/android/media/imagecrop/SemImageCrop;-><init>()V

    sput-object v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->instance:Lcom/samsung/android/media/imagecrop/SemImageCrop;

    goto :goto_0

    :cond_0
    const-string v0, "SemImageCrop"

    const-string v1, "is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->instance:Lcom/samsung/android/media/imagecrop/SemImageCrop;

    return-object v0
.end method

.method private static blacklist hasCodec(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isHeicFormat(Ljava/nio/ByteBuffer;)Z
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    new-array v4, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return v7

    :cond_0
    add-int/2addr v5, v0

    :goto_0
    const/16 v0, 0x1c

    if-gt v5, v0, :cond_2

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return v7

    nop

    :array_0
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_1
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data
.end method

.method private static blacklist isJpegFormat(Ljava/nio/ByteBuffer;)Z
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data
.end method

.method private blacklist isValidRect(Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private native blacklist nativeFinalize()V
.end method

.method private native blacklist nativeProcess(Ljava/nio/ByteBuffer;ILcom/samsung/android/media/imagecrop/SemCroppedImageInfo;IIII)I
.end method

.method private native blacklist nativeSetup()V
.end method


# virtual methods
.method public whitelist crop(Ljava/io/FileDescriptor;Landroid/graphics/Rect;)Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "SemImageCrop"

    if-nez p1, :cond_0

    const-string v2, "fd is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "rect is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "rect is not valid, check rect properties has negative value or width/height is less than or equal to zero!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/media/imagecrop/NativeBuffer;->allocNativeBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {p0, v4, p2}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->crop(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;)Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;

    move-result-object v1

    move-object v0, v1

    invoke-static {v4}, Lcom/samsung/android/media/imagecrop/NativeBuffer;->freeNativeBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public whitelist crop(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;)Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
    .locals 12

    const/4 v0, 0x0

    const-string v1, "SemImageCrop"

    if-nez p1, :cond_0

    const-string v2, "in is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "rect is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "rect is not valid, check rect properties has negative value or width/height is less than or equal to zero!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isHeicFormat(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasHevcEncoder:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupportHeifCapture:Z

    if-nez v2, :cond_5

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is heic format, but hevcEncoder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasHevcEncoder:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supportHeifCapture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupportHeifCapture:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isJpegFormat(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x8

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image format is not supported!, {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->bytesToHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    new-instance v2, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;-><init>(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    iget v11, p2, Landroid/graphics/Rect;->bottom:I

    move-object v4, p0

    move-object v5, p1

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->nativeProcess(Ljava/nio/ByteBuffer;ILcom/samsung/android/media/imagecrop/SemCroppedImageInfo;IIII)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outLength : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->reAllocInJavaBuffer(I)V

    invoke-virtual {v2}, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->getWidth()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v2}, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->getHeight()I

    move-result v4

    if-gtz v4, :cond_6

    goto :goto_0

    :cond_6
    return-object v2

    :cond_7
    :goto_0
    const-string v4, "cropping is failed!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/imagecrop/SemImageCrop;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const-string v0, "SemImageCrop"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist getSupportedFormat()[I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->hasHevcEncoder:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/media/imagecrop/SemImageCrop;->isSupportHeifCapture:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    filled-new-array {v1}, [I

    move-result-object v0

    return-object v0
.end method
