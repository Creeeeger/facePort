.class public final Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;
.super Ljava/lang/Object;
.source "ImageBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/ImageBuffer$DataSpace;,
        Lcom/samsung/android/media/vidsol/simgp/ImageBuffer$ColorSpace;
    }
.end annotation


# static fields
.field public static final blacklist SCMN_CS_ARGB8888:I = 0x1f6

.field public static final blacklist SCMN_CS_GRAY:I = 0x0

.field public static final blacklist SCMN_CS_GRAYA:I = 0xa

.field public static final blacklist SCMN_CS_I420:I = 0x1

.field public static final blacklist SCMN_CS_IYUV:I = 0x1

.field public static final blacklist SCMN_CS_NV12:I = 0x6

.field public static final blacklist SCMN_CS_NV21:I = 0x7

.field public static final blacklist SCMN_CS_P010LE:I = 0x259

.field public static final blacklist SCMN_CS_RGB888:I = 0x190

.field public static final blacklist SCMN_CS_RGBA8888:I = 0x1f4

.field public static final blacklist SCMN_CS_UNKNOWN:I = 0x3e8

.field public static final blacklist SCMN_CS_Y16:I = 0x9

.field public static final blacklist SCMN_CS_Y800:I = 0x0

.field public static final blacklist SCMN_CS_YUV400:I = 0x0

.field public static final blacklist SCMN_CS_YUV420:I = 0x1

.field public static final blacklist SCMN_CS_YUV420P10LE:I = 0x258

.field public static final blacklist SCMN_CS_YUV422:I = 0x2

.field public static final blacklist SCMN_CS_YUV422N:I = 0x2

.field public static final blacklist SCMN_CS_YUV422W:I = 0x8

.field public static final blacklist SCMN_CS_YUV444:I = 0x3

.field public static final blacklist SCMN_CS_YV12:I = 0x4

.field public static final blacklist SCMN_CS_YV16:I = 0x5

.field public static final blacklist SCMN_DS_BT2020:I = 0x14

.field public static final blacklist SCMN_DS_BT709:I = 0xa

.field public static final blacklist SCMN_IMGB_MAX_PLANE:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "SCMN_IMGB"


# instance fields
.field private blacklist mFrameSize:J

.field private blacklist mNativeBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mNativeHandle:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 149
    const-string/jumbo v0, "simgp_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "colorSpace"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeSetup(III)V

    .line 83
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width or height must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native blacklist nativeFinalize()V
.end method

.method private native blacklist nativeGetColorSpace()I
.end method

.method private native blacklist nativeGetHeight()I
.end method

.method private native blacklist nativeGetWidth()I
.end method

.method private native blacklist nativeSetup(III)V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    const-string v0, "SCMN_IMGB"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeFinalize()V

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    return-void
.end method

.method public blacklist getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist getColorSpace()I
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeGetColorSpace()I

    move-result v0

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public blacklist release()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeFinalize()V

    .line 131
    return-void
.end method

.method public blacklist setBuffer(Ljava/io/File;I)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "frameNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v0, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 107
    .local v1, "ch":Ljava/nio/channels/FileChannel;
    iget-object v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    int-to-long v3, p2

    iget-wide v5, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mFrameSize:J

    mul-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    .line 108
    .local v2, "numByte":I
    const-string v3, "SCMN_IMGB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " read : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v1    # "ch":Ljava/nio/channels/FileChannel;
    .end local v2    # "numByte":I
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 111
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    return-void

    .line 105
    .restart local v0    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public blacklist setDataSource(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v0, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 97
    .local v1, "ch":Ljava/nio/channels/FileChannel;
    iget-object v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 98
    .local v2, "numByte":I
    const-string v3, "SCMN_IMGB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " read : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v1    # "ch":Ljava/nio/channels/FileChannel;
    .end local v2    # "numByte":I
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 101
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    return-void

    .line 95
    .restart local v0    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public blacklist setDataSource(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 92
    return-void
.end method

.method public blacklist setDataSource([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 86
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 88
    return-void
.end method
