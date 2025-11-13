.class public Lcom/android/internal/util/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final blacklist mBuffer:[B

.field private blacklist mLineFinished:Z

.field private final blacklist mStream:Ljava/io/InputStream;

.field private blacklist mTail:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    return-void
.end method

.method private blacklist consumeBuf(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :goto_0
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    const/16 v1, 0x20

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v0, v0, p1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v0, v0, v4

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v4}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    :cond_1
    return-void
.end method

.method private blacklist fillBuf()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    :cond_0
    return v1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "attempting to fill already-full buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist invalidLong(I)Ljava/lang/NumberFormatException;
    .locals 6

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist nextTokenIndex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    return v0

    :cond_1
    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for token boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist parseAndConsumeLong(IZ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_6

    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, -0x30

    if-ltz v2, :cond_4

    const/16 v3, 0x9

    if-le v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    int-to-long v8, v2

    sub-long/2addr v6, v8

    cmp-long v3, v6, v4

    if-gtz v3, :cond_3

    move-wide v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    :cond_6
    :goto_3
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    if-eqz v0, :cond_7

    move-wide v1, v4

    goto :goto_4

    :cond_7
    neg-long v1, v4

    :goto_4
    return-wide v1
.end method

.method private blacklist parseAndConsumeString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public blacklist finishLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for line boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist hasMoreData()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist nextIgnored()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    return-void

    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required token"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    long-to-int v2, v0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "parsed value larger than integer"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist nextLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ProcFileReader;->nextLong(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist nextLong(Z)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(IZ)J

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required long"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist nextOptionalLong(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-wide p1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required string"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist rewind()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    iput-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The InputStream is NOT markable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
