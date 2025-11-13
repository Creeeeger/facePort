.class public Lcom/android/internal/widget/remotecompose/core/WireBuffer;
.super Ljava/lang/Object;
.source "WireBuffer.java"


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x100000


# instance fields
.field blacklist mBuffer:[B

.field blacklist mIndex:I

.field blacklist mMaxSize:I

.field blacklist mSize:I

.field blacklist mStartingIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    return-void
.end method

.method private blacklist resize(I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist available()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist endWithSize()V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-void
.end method

.method public blacklist getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    return-object v0
.end method

.method public blacklist getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return v0
.end method

.method public blacklist getMax_size()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    return v0
.end method

.method public blacklist getSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return v0
.end method

.method public blacklist peekInt()I
    .locals 6

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int v4, v0, v1

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    return v4
.end method

.method public blacklist readBoolean()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public blacklist readBuffer()[B
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-object v1
.end method

.method public blacklist readBuffer(I)[B
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    if-gt v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt read a buff of invalid size 0 <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readByte()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return v0
.end method

.method public blacklist readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readInt()I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int v4, v0, v1

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    return v4
.end method

.method public blacklist readLong()J
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v8, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v9, v9, v10

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    iget-object v11, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0x18

    shl-long/2addr v11, v13

    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v14, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0x10

    shl-long/2addr v13, v15

    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v15, v3

    int-to-long v3, v3

    const-wide/16 v15, 0xff

    and-long/2addr v3, v15

    const/16 v17, 0x8

    shl-long v3, v3, v17

    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    move-wide/from16 v18, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v15, v3

    int-to-long v3, v3

    const-wide/16 v15, 0xff

    and-long/2addr v3, v15

    const/4 v15, 0x0

    shl-long/2addr v3, v15

    add-long v15, v1, v5

    add-long/2addr v15, v7

    add-long/2addr v15, v9

    add-long/2addr v15, v11

    add-long/2addr v15, v13

    add-long v15, v15, v18

    add-long/2addr v15, v3

    return-wide v15
.end method

.method public blacklist readOperationType()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    return v0
.end method

.method public blacklist readShort()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int v2, v0, v1

    return v2
.end method

.method public blacklist readUTF8()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public blacklist readUTF8(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer(I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public blacklist reset(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    :cond_0
    return-void
.end method

.method public blacklist setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-void
.end method

.method public blacklist size()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return v0
.end method

.method public blacklist start(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    return-void
.end method

.method public blacklist startWithSize(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-void
.end method

.method public blacklist writeBoolean(Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeBuffer([B)V
    .locals 4

    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeByte(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeDouble(D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    return-void
.end method

.method public blacklist writeFloat(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public blacklist writeInt(I)V
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeLong(J)V
    .locals 7

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x8

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-long v3, p1, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeShort(I)V
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeUTF8(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    return-void
.end method
