.class public Lcom/samsung/android/sume/core/UniExifInterface;
.super Landroid/media/ExifInterface;
.source "UniExifInterface.java"


# static fields
.field static final blacklist EXIF_PREFIX:[B

.field static final blacklist JPEG_POSTFIX:[B

.field static final blacklist JPEG_PREFIX:[B

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist originExifBuffer:Ljava/nio/ByteBuffer;

.field blacklist tempFile:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sume/core/UniExifInterface;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/UniExifInterface;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_PREFIX:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/samsung/android/sume/core/UniExifInterface;->EXIF_PREFIX:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_POSTFIX:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1ft
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/UniExifInterface;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    iput-object p1, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    return-void
.end method

.method public static blacklist emptyOf()Lcom/samsung/android/sume/core/UniExifInterface;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/UniExifInterface;->of(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/UniExifInterface;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist isJpegPrefix(Ljava/nio/ByteBuffer;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v2, v2, [B

    aput-byte v0, v2, v1

    const/4 v0, 0x1

    aput-byte v3, v2, v0

    move-object v0, v2

    sget-object v1, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_PREFIX:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public static blacklist of(Ljava/io/File;)Lcom/samsung/android/sume/core/UniExifInterface;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->parseExif(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/UniExifInterface$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/UniExifInterface$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/UniExifInterface;

    return-object v1
.end method

.method public static blacklist of(Ljava/lang/String;)Lcom/samsung/android/sume/core/UniExifInterface;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sume/core/UniExifInterface;->of(Ljava/io/File;)Lcom/samsung/android/sume/core/UniExifInterface;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist of(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/UniExifInterface;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->toJpegExifFile(Ljava/nio/ByteBuffer;)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    new-instance v1, Lcom/samsung/android/sume/core/UniExifInterface;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sume/core/UniExifInterface;-><init>(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist parseExif(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->parseJpegExif(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->parseHeifExif(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static blacklist parseHeifExif(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/SemBitmapFactory;->getExifDataFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/UniExifInterface$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/UniExifInterface$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private static blacklist parseJpegExif(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 18

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    const/4 v0, 0x2

    :try_start_1
    new-array v4, v0, [B

    const-wide/16 v5, 0x0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v0}, Ljava/io/FileInputStream;->read([BII)I

    const-wide/16 v8, 0x2

    add-long/2addr v5, v8

    :goto_0
    invoke-virtual {v3, v4, v7, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    if-lez v10, :cond_6

    add-long/2addr v5, v8

    new-instance v10, Landroid/util/Pair;

    aget-byte v11, v4, v7

    const/16 v12, 0xff

    and-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aget-byte v14, v4, v13

    and-int/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v10, v11, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    move v13, v7

    :goto_1
    move v11, v13

    if-nez v11, :cond_1

    sget-object v0, Lcom/samsung/android/sume/core/UniExifInterface;->TAG:Ljava/lang/String;

    const-string v7, "this is not valid markers"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :cond_1
    :try_start_3
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v13, 0xd0

    if-gt v13, v12, :cond_2

    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v13, 0xd7

    if-lt v13, v12, :cond_2

    goto :goto_0

    :cond_2
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v13, 0xe1

    if-ne v12, v13, :cond_5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v13

    add-long/2addr v5, v8

    shl-int/lit8 v14, v12, 0x8

    or-int/2addr v14, v13

    const/4 v15, 0x4

    new-array v0, v15, [B

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    move/from16 v17, v16

    move/from16 v8, v17

    if-ge v8, v15, :cond_3

    sget-object v7, Lcom/samsung/android/sume/core/UniExifInterface;->TAG:Ljava/lang/String;

    const-string v9, "Fail to read exif Tag"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :cond_3
    const-wide/16 v16, 0x4

    add-long v5, v5, v16

    :try_start_5
    new-instance v9, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-direct {v9, v0, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v15, "Exif"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v9, v14, -0x2

    new-array v9, v9, [B

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    sub-long v1, v5, v16

    invoke-virtual {v15, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    array-length v1, v9

    invoke-virtual {v3, v9, v7, v1}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v1

    :cond_4
    :try_start_7
    sget-object v1, Lcom/samsung/android/sume/core/UniExifInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not exif "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v14, -0x6

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v1, v14, -0x6

    int-to-long v1, v1

    add-long/2addr v5, v1

    :cond_5
    const/4 v0, 0x2

    move-object/from16 v2, p0

    const/4 v1, 0x0

    const-wide/16 v8, 0x2

    goto/16 :goto_0

    :cond_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist reset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static blacklist toJpegExifFile(Ljava/nio/ByteBuffer;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->isJpegPrefix(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-array v1, v2, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_PREFIX:[B

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lcom/samsung/android/sume/core/UniExifInterface;->EXIF_PREFIX:[B

    invoke-static {v2, v3, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    add-int/2addr v2, v4

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    array-length v2, v0

    add-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x5

    aput-byte v2, v1, v5

    array-length v2, v0

    const/4 v5, 0x6

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lcom/samsung/android/sume/core/UniExifInterface;->JPEG_POSTFIX:[B

    array-length v6, v0

    add-int/2addr v6, v5

    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "UniExifInterface.jpg"

    const-string v5, "tmp"

    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-object v2
.end method


# virtual methods
.method public blacklist getOriginExifBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->originExifBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist getTempFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public blacklist toExifByteBuffer()Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/UniExifInterface;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    add-int/lit8 v4, v4, -0x8

    new-array v2, v4, [B

    const/4 v4, 0x6

    array-length v5, v2

    invoke-static {v1, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-direct {p0}, Lcom/samsung/android/sume/core/UniExifInterface;->reset()V

    return-object v0
.end method
