.class public abstract Landroid/util/apk/VerityBuilder;
.super Ljava/lang/Object;
.source "VerityBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/VerityBuilder$VerityResult;,
        Landroid/util/apk/VerityBuilder$BufferedDigester;
    }
.end annotation


# static fields
.field private static final blacklist CHUNK_SIZE_BYTES:I = 0x1000

.field private static final blacklist DEFAULT_SALT:[B

.field private static final blacklist DIGEST_SIZE_BYTES:I = 0x20

.field private static final blacklist FSVERITY_HEADER_SIZE_BYTES:I = 0x40

.field private static final blacklist JCA_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final blacklist MMAP_REGION_SIZE_BYTES:I = 0x100000

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_SIZE:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assertSigningBlockAlignedAndHasFullPages(Landroid/util/apk/SignatureInfo;)V
    .locals 8

    iget-wide v0, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    const-wide/16 v2, 0x1000

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v6, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v0, v6

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of APK Signing Block is not a multiple of 4096: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v4, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK Signing Block does not start at the page boundary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist calculateVerityLevelOffset(J)[I
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-wide/16 v1, 0x1000

    invoke-static {p0, p1, v1, v2}, Landroid/util/apk/VerityBuilder;->divideRoundup(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x20

    mul-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Landroid/util/apk/VerityBuilder;->divideRoundup(JJ)J

    move-result-wide v5

    mul-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget v4, v1, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    move-wide p0, v3

    goto :goto_0
.end method

.method private static blacklist consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    int-to-long v4, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {p1, p0, v2, v3, v4}, Landroid/util/apk/DataSource;->feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V

    int-to-long v5, v4

    add-long/2addr v2, v5

    int-to-long v5, v4

    sub-long/2addr v0, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist divideRoundup(JJ)J
    .locals 4

    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method static blacklist generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object v1

    iget-object v2, v1, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    iget v3, v1, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    iget-object v4, v1, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, p2, v2}, Landroid/util/apk/VerityBuilder;->generateApkVerityFooter(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v3, v1, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    iget v4, v1, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, v1, Landroid/util/apk/VerityBuilder$VerityResult;->rootHash:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v3

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

.method private static blacklist generateApkVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[BLjava/nio/ByteBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    new-instance v0, Landroid/util/apk/VerityBuilder$BufferedDigester;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder$BufferedDigester-IA;)V

    nop

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-static {v0, v1, v2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    iget-wide v3, p1, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    nop

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v5, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v7, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    sub-long v7, v3, v7

    invoke-static {v1, v5, v6, v7, v8}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v5, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    const-wide/16 v5, 0x4

    add-long/2addr v5, v3

    nop

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-static {v7, v5, v6, v8, v9}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v7

    invoke-static {v0, v7, v2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x1000

    rem-long/2addr v7, v9

    long-to-int v2, v7

    if-eqz v2, :cond_0

    rsub-int v7, v2, 0x1000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    invoke-static {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    return-void
.end method

.method private static blacklist generateApkVerityExtensions(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x8

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v2, 0x14

    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-static {p0, v3}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    const-wide/16 v3, 0x10

    add-long/2addr v3, p5

    invoke-virtual {p0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-static {p0, v3}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    return-object p0
.end method

.method static blacklist generateApkVerityFooter(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    sget-object v2, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    invoke-static {p2, v0, v1, v2}, Landroid/util/apk/VerityBuilder;->generateApkVerityHeader(Ljava/nio/ByteBuffer;J[B)Ljava/nio/ByteBuffer;

    iget-wide v0, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v2, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v0, v2

    iget-wide v5, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    iget-wide v9, p1, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    move-object v4, p2

    move-wide v7, v0

    invoke-static/range {v4 .. v10}, Landroid/util/apk/VerityBuilder;->generateApkVerityExtensions(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static blacklist generateApkVerityHeader(Ljava/nio/ByteBuffer;J[B)Ljava/nio/ByteBuffer;
    .locals 3

    array-length v0, p3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "TrueBrew"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x16

    invoke-static {p0, v0}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "salt is not 8 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generateApkVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/VerityBuilder$VerityResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-static {p0, p2, p1}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generateFsVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;[BLjava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    new-instance v0, Landroid/util/apk/VerityBuilder$BufferedDigester;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder$BufferedDigester-IA;)V

    nop

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-static {v0, v1, v2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    rem-long/2addr v1, v3

    long-to-int v1, v1

    if-eqz v1, :cond_0

    rsub-int v2, v1, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    invoke-static {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    return-void
.end method

.method public static blacklist generateFsVerityRootHash(Ljava/lang/String;[BLandroid/util/apk/ByteBufferFactory;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/apk/VerityBuilder;->calculateVerityLevelOffset(J)[I

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, v1, v2

    add-int/lit16 v3, v2, 0x1000

    invoke-interface {p2, v3}, Landroid/util/apk/ByteBufferFactory;->create(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v0, p1, v1, v4}, Landroid/util/apk/VerityBuilder;->generateFsVerityTreeInternal(Ljava/io/RandomAccessFile;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v5

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

.method private static blacklist generateFsVerityTreeInternal(Ljava/io/RandomAccessFile;[B[ILjava/nio/ByteBuffer;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    aget v0, p2, v0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p2, v1

    invoke-static {p3, v0, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/apk/VerityBuilder;->generateFsVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;[BLjava/nio/ByteBuffer;)V

    array-length v0, p2

    add-int/lit8 v0, v0, -0x3

    :goto_0
    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p2, v4

    invoke-static {p3, v3, v4}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    aget v4, p2, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    invoke-static {p3, v4, v5}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v5, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v5, v3}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v6, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-direct {v6, p1, v4, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder$BufferedDigester-IA;)V

    move-object v2, v6

    invoke-static {v2, v5, v1}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    invoke-virtual {v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    invoke-static {v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [B

    new-instance v3, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder$BufferedDigester-IA;)V

    move-object v2, v3

    const/4 v3, 0x0

    invoke-static {p3, v3, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    return-object v0
.end method

.method private static blacklist generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    iget-wide v0, p2, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v2, p2, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Landroid/util/apk/VerityBuilder;->calculateVerityLevelOffset(J)[I

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v5, v4, v5

    add-int/lit16 v6, v5, 0x1000

    invoke-interface {p1, v6}, Landroid/util/apk/ByteBufferFactory;->create(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    invoke-static {p0, p2, v8, v4, v7}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object v8

    new-instance v9, Landroid/util/apk/VerityBuilder$VerityResult;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v5, v8, v10}, Landroid/util/apk/VerityBuilder$VerityResult;-><init>(Ljava/nio/ByteBuffer;I[BLandroid/util/apk/VerityBuilder$VerityResult-IA;)V

    return-object v9
.end method

.method private static blacklist generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[B[ILjava/nio/ByteBuffer;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/apk/VerityBuilder;->assertSigningBlockAlignedAndHasFullPages(Landroid/util/apk/SignatureInfo;)V

    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    aget v0, p3, v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p3, v1

    invoke-static {p4, v0, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/VerityBuilder;->generateApkVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[BLjava/nio/ByteBuffer;)V

    array-length v0, p3

    add-int/lit8 v0, v0, -0x3

    :goto_0
    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget v3, p3, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p3, v4

    invoke-static {p4, v3, v4}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    aget v4, p3, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, p3, v5

    invoke-static {p4, v4, v5}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v5, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v5, v3}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v6, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-direct {v6, p2, v4, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder$BufferedDigester-IA;)V

    move-object v2, v6

    invoke-static {v2, v5, v1}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    invoke-virtual {v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    invoke-static {v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [B

    new-instance v3, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, p2, v4, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder$BufferedDigester-IA;)V

    move-object v2, v3

    const/4 v3, 0x0

    invoke-static {p4, v3, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    return-object v0
.end method

.method private static blacklist skip(Ljava/nio/ByteBuffer;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static blacklist slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method
