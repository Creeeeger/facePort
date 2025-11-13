.class public final Lcom/google/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:[B

.field public bufferPos:I

.field public bufferSize:I

.field public bufferSizeAfterLimit:I

.field public final bufferStart:I

.field public currentLimit:I

.field public lastTag:I

.field public recursionDepth:I

.field public final recursionLimit:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    iput-object p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void
.end method

.method public static newInstance(II[B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final readInt64()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v0, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readMessage(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v1, v2, :cond_5

    if-ltz v0, :cond_4

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v0, v2, :cond_3

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v4, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    const/4 v4, 0x0

    if-le v3, v0, :cond_0

    sub-int v0, v3, v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    iget p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-le p1, v2, :cond_1

    sub-int v0, p1, v2

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    goto :goto_1

    :cond_1
    iput v4, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    :goto_1
    return-void

    :cond_2
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readRawByte()B
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget-object p0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    aget-byte p0, p0, v0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0
.end method

.method public final readRawLittleEndian64()J
    .locals 12

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result p0

    int-to-long v7, v0

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    int-to-long v0, v1

    and-long/2addr v0, v9

    const/16 v11, 0x8

    shl-long/2addr v0, v11

    or-long/2addr v0, v7

    int-to-long v7, v2

    and-long/2addr v7, v9

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    int-to-long v2, v3

    and-long/2addr v2, v9

    const/16 v7, 0x18

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v9

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v9

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v9

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p0

    and-long/2addr v2, v9

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readRawVarint32()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 p0, v1, 0x7

    :goto_0
    or-int/2addr p0, v0

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 p0, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 p0, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v0, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move p0, v0

    :goto_2
    return p0
.end method

.method public final readString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v4, Lcom/google/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v1

    :cond_0
    new-instance v4, Ljava/lang/String;

    if-ltz v0, :cond_3

    add-int v5, v2, v0

    iget v6, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v5, v6, :cond_2

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sget-object p0, Lcom/google/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v4

    :cond_1
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_2
    sub-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readTag()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v0, "Protocol message contained an invalid tag (zero)."

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final skipField(I)Z
    .locals 4

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    return v1

    :cond_0
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    iget p0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-ne p0, p1, :cond_4

    return v1

    :cond_4
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    return v1
.end method

.method public final skipRawBytes(I)V
    .locals 3

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v1, v2, :cond_1

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    sub-int/2addr v2, v0

    if-gt p1, v2, :cond_0

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_1
    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
