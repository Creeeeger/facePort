.class public Landroid/os/incremental/V4Signature;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/V4Signature$HashingInfo;,
        Landroid/os/incremental/V4Signature$SigningInfo;,
        Landroid/os/incremental/V4Signature$SigningInfos;,
        Landroid/os/incremental/V4Signature$SigningInfoBlock;
    }
.end annotation


# static fields
.field public static final blacklist EXT:Ljava/lang/String; = ".idsig"

.field public static final blacklist HASHING_ALGORITHM_SHA256:I = 0x1

.field public static final blacklist INCFS_MAX_SIGNATURE_SIZE:I = 0x1fa0

.field public static final blacklist LOG2_BLOCK_SIZE_4096_BYTES:B = 0xct

.field public static final blacklist SUPPORTED_VERSION:I = 0x2


# instance fields
.field public final blacklist hashingInfo:[B

.field public final blacklist signingInfos:[B

.field public final blacklist version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B
    .locals 0

    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/incremental/V4Signature;->version:I

    iput-object p2, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    iput-object p3, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    return-void
.end method

.method private static blacklist bytesSize([B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static blacklist getSignedData(JLandroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfo;)[B
    .locals 3

    iget-object v0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-static {v0}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object v2, p3, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object v2, p3, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object v2, p3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private static blacklist readBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readIntLE(Ljava/io/InputStream;)I

    move-result v0

    if-gt v0, p1, :cond_0

    new-array v1, v0, [B

    invoke-static {p0, v1}, Landroid/os/incremental/V4Signature;->readFully(Ljava/io/InputStream;[B)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Signature is too long. Max allowed is 8096"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist readBytes(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static blacklist readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :try_start_0
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static blacklist readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readIntLE(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x1fa0

    invoke-static {p0, v1}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    sub-int/2addr v1, v3

    :cond_0
    invoke-static {p0, v1}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    new-instance v4, Landroid/os/incremental/V4Signature;

    invoke-direct {v4, v0, v2, v3}, Landroid/os/incremental/V4Signature;-><init>(I[B[B)V

    return-object v4
.end method

.method public static blacklist readFrom([B)Landroid/os/incremental/V4Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static blacklist readFully(Ljava/io/InputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sub-int v2, v0, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_1
    return-void
.end method

.method private static blacklist readIntLE(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {p0, v0}, Landroid/os/incremental/V4Signature;->readFully(Ljava/io/InputStream;[B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method

.method private static blacklist writeBytes(Ljava/io/OutputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    return-void

    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private static blacklist writeBytes(Ljava/nio/ByteBuffer;[B)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static blacklist writeIntLE(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private blacklist writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/os/incremental/V4Signature;->version:I

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V

    iget-object v0, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V

    return-void
.end method


# virtual methods
.method public blacklist isVersionSupported()Z
    .locals 2

    iget v0, p0, Landroid/os/incremental/V4Signature;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist toByteArray()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/os/incremental/V4Signature;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method
