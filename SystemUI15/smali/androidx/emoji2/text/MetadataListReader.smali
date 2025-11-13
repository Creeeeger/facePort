.class public final Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 15

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    iget-object v2, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    const/16 v3, 0x64

    const-string v4, "Cannot read metadata."

    if-gt v2, v3, :cond_5

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    const-wide v6, 0xffffffffL

    const-wide/16 v8, -0x1

    if-ge v5, v2, :cond_1

    iget-object v10, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    iget-object v11, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-long v11, v11

    and-long/2addr v11, v6

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    const v13, 0x6d657461

    if-ne v13, v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-wide v11, v8

    :goto_1
    cmp-long v1, v11, v8

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v11, v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    iget-object v1, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v6

    :goto_2
    int-to-long v8, v3

    cmp-long v5, v8, v1

    if-gez v5, :cond_4

    iget-object v5, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iget-object v8, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    iget-object v10, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    int-to-long v13, v10

    and-long/2addr v13, v6

    const v10, 0x456d6a69

    if-eq v10, v5, :cond_3

    const v10, 0x656d6a69

    if-ne v10, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    add-long/2addr v8, v11

    invoke-direct {v0, v8, v9, v13, v14}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;-><init>(JJ)V

    iget-wide v0, v0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mStartOffset:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    iput-object p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    iput v2, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    iget-object p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    iput p0, v0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    return-object v0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
