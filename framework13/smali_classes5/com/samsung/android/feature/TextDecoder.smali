.class public Lcom/samsung/android/feature/TextDecoder;
.super Ljava/lang/Object;
.source "TextDecoder.java"


# static fields
.field private static final blacklist DECODE_BLOCK:I = 0x100000

.field private static final blacklist FILE_BLOCK:I = 0x400

.field private static final blacklist SALT_LENGTH:I = 0x100

.field private static final blacklist salts:[B

.field private static final blacklist shifts:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 23
    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/feature/TextDecoder;->salts:[B

    .line 36
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/feature/TextDecoder;->shifts:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        -0x3bt
        0x21t
        -0x22t
        0x6bt
        0x1ct
        -0x6bt
        0x37t
        0x4et
        0x11t
        -0x51t
        0x6t
        -0x50t
        -0x79t
        -0x23t
        -0x17t
        0x48t
        0x7at
        -0x3ft
        -0x2bt
        0x44t
        0x77t
        -0x4et
        -0x6ft
        -0x3ct
        0x1ft
        0x3ct
        0x39t
        0x5ct
        -0x58t
        -0x64t
        -0x45t
        -0x6at
        0x5bt
        0x45t
        0x5dt
        0x6et
        0x17t
        0x5dt
        0x35t
        -0x2ct
        -0x33t
        0x40t
        -0x50t
        0x2et
        0x2t
        -0x4t
        0xct
        -0x2dt
        0x50t
        -0x2ct
        -0x23t
        -0x6ft
        -0x1ct
        -0x42t
        -0x74t
        0x27t
        0x2t
        -0x1bt
        -0x2dt
        -0x34t
        0x7dt
        0x27t
        0x42t
        -0x5at
        0x3ft
        -0x69t
        -0x43t
        0x54t
        -0x39t
        -0x4t
        -0x4t
        0x65t
        -0x5at
        0x51t
        0xat
        -0x21t
        0x1t
        0x43t
        -0x39t
        -0x47t
        0x12t
        -0x4at
        0x66t
        0x60t
        -0x59t
        0x40t
        -0x11t
        0x36t
        -0x5et
        -0x54t
        -0x42t
        0xet
        0x77t
        0x79t
        0x2t
        -0x4et
        -0x4ft
        0x59t
        0x3ft
        0x5dt
        0x6dt
        -0x4et
        -0x33t
        0x42t
        -0x24t
        0x20t
        0x56t
        0x3t
        -0x3at
        -0xft
        0x5ct
        0x3at
        0x2t
        -0x59t
        -0x50t
        -0xdt
        -0x1t
        0x7at
        -0x4t
        0x30t
        0x3ft
        -0x2ct
        0x3bt
        0x64t
        -0x2at
        -0x2dt
        0x3bt
        -0x7t
        -0x11t
        -0x36t
        0x22t
        -0x36t
        0x47t
        -0x40t
        -0x1at
        -0x57t
        -0x50t
        -0x11t
        -0x2ct
        -0x26t
        -0x70t
        0x46t
        0xat
        -0x6at
        0x5ft
        -0x18t
        -0x4t
        -0x76t
        0x2dt
        -0x55t
        -0xdt
        0x55t
        0x19t
        -0x66t
        -0x77t
        0xdt
        -0x25t
        0x74t
        0x2et
        -0x45t
        0x3bt
        0x2at
        -0x5at
        -0x26t
        -0x69t
        0x65t
        -0x77t
        -0x24t
        0x61t
        -0x3t
        -0x3et
        -0x5bt
        -0x61t
        -0x7dt
        0x11t
        0xet
        0x6at
        -0x48t
        -0x77t
        0x63t
        0x6ft
        0x14t
        0x12t
        -0x1bt
        0x71t
        0x40t
        -0x18t
        0x4at
        -0x3ct
        -0x64t
        0x1at
        0x38t
        -0x2ct
        -0x46t
        0xct
        -0x33t
        -0x64t
        -0x20t
        -0xbt
        0x1at
        0x30t
        -0x75t
        0x62t
        -0x5dt
        0x33t
        -0x19t
        -0x4ft
        -0x1ft
        0x61t
        0x57t
        -0x69t
        -0x40t
        0x7t
        -0xdt
        -0x65t
        0x21t
        -0x7at
        0x5t
        -0x68t
        0x59t
        -0x2ct
        -0x75t
        0x3ft
        -0x50t
        -0x6t
        -0x47t
        -0x6et
        -0x1dt
        -0x69t
        0x74t
        0x6bt
        -0x5dt
        0x5bt
        -0x29t
        -0xdt
        0x14t
        -0x73t
        -0x4et
        0x2bt
        0x4ft
        -0x7at
        0x6t
        0x66t
        -0x20t
        0x34t
        -0x76t
        -0x33t
        0x48t
        -0x68t
        0x29t
        -0x26t
        0x7ct
        0x48t
        -0x7et
        -0x23t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x2t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x7t
        0x1t
        0x6t
        0x5t
        0x3t
        0x3t
        0x1t
        0x2t
        0x5t
        0x0t
        0x6t
        0x2t
        0x2t
        0x4t
        0x2t
        0x2t
        0x3t
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x3t
        0x5t
        0x3t
        0x1t
        0x6t
        0x5t
        0x6t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x3t
        0x2t
        0x7t
        0x7t
        0x5t
        0x6t
        0x7t
        0x3t
        0x5t
        0x1t
        0x0t
        0x7t
        0x6t
        0x3t
        0x6t
        0x5t
        0x4t
        0x5t
        0x3t
        0x5t
        0x1t
        0x3t
        0x3t
        0x1t
        0x5t
        0x4t
        0x1t
        0x0t
        0x0t
        0x2t
        0x6t
        0x6t
        0x6t
        0x6t
        0x4t
        0x0t
        0x1t
        0x1t
        0x0t
        0x5t
        0x5t
        0x4t
        0x2t
        0x4t
        0x6t
        0x1t
        0x7t
        0x1t
        0x2t
        0x1t
        0x1t
        0x6t
        0x5t
        0x4t
        0x7t
        0x6t
        0x5t
        0x1t
        0x6t
        0x7t
        0x0t
        0x2t
        0x6t
        0x3t
        0x1t
        0x7t
        0x1t
        0x1t
        0x7t
        0x4t
        0x0t
        0x4t
        0x2t
        0x5t
        0x3t
        0x1t
        0x1t
        0x5t
        0x6t
        0x0t
        0x3t
        0x5t
        0x3t
        0x6t
        0x5t
        0x7t
        0x2t
        0x5t
        0x6t
        0x6t
        0x2t
        0x2t
        0x3t
        0x6t
        0x0t
        0x4t
        0x3t
        0x2t
        0x0t
        0x2t
        0x2t
        0x3t
        0x5t
        0x3t
        0x3t
        0x2t
        0x5t
        0x5t
        0x5t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x5t
        0x1t
        0x6t
        0x2t
        0x4t
        0x7t
        0x1t
        0x4t
        0x6t
        0x0t
        0x6t
        0x4t
        0x3t
        0x2t
        0x6t
        0x1t
        0x6t
        0x3t
        0x2t
        0x1t
        0x6t
        0x7t
        0x3t
        0x2t
        0x1t
        0x1t
        0x5t
        0x6t
        0x7t
        0x2t
        0x2t
        0x2t
        0x7t
        0x4t
        0x6t
        0x7t
        0x5t
        0x3t
        0x1t
        0x4t
        0x2t
        0x7t
        0x1t
        0x6t
        0x2t
        0x4t
        0x1t
        0x5t
        0x6t
        0x5t
        0x4t
        0x5t
        0x0t
        0x1t
        0x1t
        0x6t
        0x3t
        0x7t
        0x2t
        0x0t
        0x2t
        0x5t
        0x0t
        0x1t
        0x3t
        0x3t
        0x2t
        0x6t
        0x7t
        0x7t
        0x2t
        0x5t
        0x6t
        0x0t
        0x4t
        0x1t
        0x2t
        0x5t
        0x3t
        0x7t
        0x6t
        0x5t
        0x2t
        0x5t
        0x2t
        0x0t
        0x1t
        0x3t
        0x1t
        0x4t
        0x3t
        0x4t
        0x2t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist decode(Ljava/io/File;Z)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "isTestEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/samsung/android/feature/TextDecoder;->isEncodedGzip(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/samsung/android/feature/TextDecoder;->readEncodedGzipAllBytes(Ljava/io/File;)[B

    move-result-object v0

    .local v0, "output":[B
    goto :goto_0

    .line 106
    .end local v0    # "output":[B
    :cond_0
    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 111
    .restart local v0    # "output":[B
    :goto_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 109
    .end local v0    # "output":[B
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist decodeAllBytes(Ljava/io/File;)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 81
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 82
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    const/high16 v2, 0x100000

    invoke-static {v0, v2}, Lcom/samsung/android/feature/TextDecoder;->readBuffer(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/feature/TextDecoder;->decodeByte([B)[B

    move-result-object v2

    .line 84
    .local v2, "buffer":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 85
    .end local v2    # "buffer":[B
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 86
    return-object v2

    .line 80
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method private static blacklist decodeByte([B)[B
    .locals 6
    .param p0, "source"    # [B

    .line 70
    array-length v0, p0

    new-array v0, v0, [B

    .line 71
    .local v0, "results":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 72
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lcom/samsung/android/feature/TextDecoder;->shifts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v4, v3, v4

    shl-int/2addr v2, v4

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    rem-int/lit16 v5, v1, 0x100

    aget-byte v3, v3, v5

    rsub-int/lit8 v3, v3, 0x8

    ushr-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 74
    aget-byte v2, v0, v1

    sget-object v3, Lcom/samsung/android/feature/TextDecoder;->salts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static blacklist isEncodedGzip(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 59
    .local v1, "buffer":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 60
    const/16 v2, 0x400

    invoke-static {v0, v2}, Lcom/samsung/android/feature/TextDecoder;->readBuffer(Ljava/io/InputStream;I)[B

    move-result-object v2

    move-object v1, v2

    .line 62
    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 63
    aget-byte v3, v1, v2

    const/16 v4, 0x2f

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    aget-byte v3, v1, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x27

    if-ne v3, v4, :cond_1

    move v2, v5

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 63
    return v2

    .line 65
    :cond_2
    nop

    .line 66
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 65
    return v2

    .line 57
    .end local v1    # "buffer":[B
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static blacklist readBuffer(Ljava/io/InputStream;I)[B
    .locals 5
    .param p0, "fis"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-array v0, p1, [B

    .line 47
    .local v0, "source":[B
    const/4 v1, 0x0

    .line 49
    .local v1, "current":I
    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 50
    add-int/2addr v1, v3

    goto :goto_0

    .line 52
    .end local v3    # "len":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private static blacklist readEncodedGzipAllBytes(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/samsung/android/feature/TextDecoder;->decodeAllBytes(Ljava/io/File;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 93
    .local v1, "gzIs":Ljava/util/zip/GZIPInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 95
    const/high16 v3, 0x100000

    invoke-static {v1, v3}, Lcom/samsung/android/feature/TextDecoder;->readBuffer(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 96
    .local v3, "buffer":[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 97
    .end local v3    # "buffer":[B
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 98
    return-object v3

    .line 91
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "gzIs":Ljava/util/zip/GZIPInputStream;
    .end local p0    # "file":Ljava/io/File;
    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "gzIs":Ljava/util/zip/GZIPInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local p0    # "file":Ljava/io/File;
    :goto_2
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v1    # "gzIs":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_4
    move-exception v1

    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
.end method
