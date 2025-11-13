.class public Lcom/android/modules/utils/FastDataOutput;
.super Ljava/lang/Object;
.source "FastDataOutput.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/Flushable;
.implements Ljava/io/Closeable;


# static fields
.field protected static final blacklist DEFAULT_BUFFER_SIZE:I = 0x8000

.field protected static final blacklist MAX_UNSIGNED_SHORT:I = 0xffff


# instance fields
.field protected final blacklist mBuffer:[B

.field protected final blacklist mBufferCap:I

.field protected blacklist mBufferPos:I

.field private blacklist mOut:Ljava/io/OutputStream;

.field private final blacklist mStringRefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    const/16 v0, 0x8

    if-lt p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/modules/utils/FastDataOutput;->newByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    invoke-virtual {p0, p1}, Lcom/android/modules/utils/FastDataOutput;->setOutput(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist obtain(Ljava/io/OutputStream;)Lcom/android/modules/utils/FastDataOutput;
    .locals 2

    new-instance v0, Lcom/android/modules/utils/FastDataOutput;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Lcom/android/modules/utils/FastDataOutput;-><init>(Ljava/io/OutputStream;I)V

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

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->release()V

    return-void
.end method

.method protected blacklist drain()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    :cond_0
    return-void
.end method

.method public whitelist test-api flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->drain()V

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public blacklist newByteArray(I)[B
    .locals 1

    new-array v0, p1, [B

    return-object v0
.end method

.method public blacklist release()V
    .locals 2

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lingering data, call flush() before releasing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setOutput(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setOutput() called before calling release()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    return-void
.end method

.method public whitelist test-api write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/modules/utils/FastDataOutput;->write([BII)V

    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->drain()V

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->drain()V

    :cond_1
    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    :goto_0
    return-void
.end method

.method public whitelist test-api writeBoolean(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    return-void
.end method

.method public whitelist test-api writeByte(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->drain()V

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public whitelist test-api writeBytes(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    return-void
.end method

.method public whitelist test-api writeChars(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeLong(J)V

    return-void
.end method

.method public whitelist test-api writeFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/modules/utils/FastDataOutput;->writeInt(I)V

    return-void
.end method

.method public whitelist test-api writeInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->drain()V

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public blacklist writeInternedUTF(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    const v1, 0xffff

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    invoke-virtual {p0, p1}, Lcom/android/modules/utils/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist test-api writeLong(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->drain()V

    :cond_0
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    long-to-int v0, p1

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    return-void
.end method

.method public whitelist test-api writeShort(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->drain()V

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public whitelist test-api writeUTF(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/modules/utils/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    add-int/lit8 v3, v1, 0x2

    if-lt v2, v3, :cond_1

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataOutput;->drain()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    iget-object v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    invoke-static {v0, v2, p1}, Lcom/android/modules/utils/ModifiedUtf8;->encode([BILjava/lang/String;)V

    iget v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/modules/utils/FastDataOutput;->mBufferPos:I

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/modules/utils/FastDataOutput;->newByteArray(I)[B

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/android/modules/utils/ModifiedUtf8;->encode([BILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/modules/utils/FastDataOutput;->write([BII)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified UTF-8 length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
