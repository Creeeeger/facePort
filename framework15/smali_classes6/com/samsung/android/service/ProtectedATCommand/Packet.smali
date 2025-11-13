.class public Lcom/samsung/android/service/ProtectedATCommand/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field public static final blacklist MAX_PACKET_SIZE:I = 0x200

.field public static final blacklist PAC_PACKET_CMD_AT_CMD_CHECK:I = 0x1

.field public static final blacklist PAC_PACKET_TYPE_AT_CMD:I = 0x2

.field public static final blacklist PAC_PACKET_TYPE_AT_CMD_ATD_DDEXE:I = 0x4

.field public static final blacklist PAC_PACKET_TYPE_AT_CMD_RET:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "PACMPacket"


# instance fields
.field private final blacklist COMMAND_BUFFER_SIZE:I

.field private final blacklist ITEM_COUNT_BUFFER_SIZE:I

.field private final blacklist VERSION_BUFFER_SIZE:I

.field private blacklist mBuffer:[B

.field private blacklist mSize:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->VERSION_BUFFER_SIZE:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->COMMAND_BUFFER_SIZE:I

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->ITEM_COUNT_BUFFER_SIZE:I

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    return-void
.end method

.method private blacklist initPacket(II)V
    .locals 4

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    return-void
.end method

.method private blacklist putItem(Ljava/lang/Object;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)[B"
        }
    .end annotation

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "PACMPacket"

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :pswitch_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v5, v0, :cond_0

    int-to-short v0, p2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    aget-byte v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->buffer()[B

    move-result-object v3

    return-object v3

    :cond_0
    const-string v0, "Packet is full, Can\'t put item to packet"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist buffer()[B
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist compareVersion(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    aget-byte v0, v0, v1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version is abnormal : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PACMPacket"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist getCommand()I
    .locals 5

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packet size is abnormal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PACMPacket"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x10000000

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    iget-object v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    new-array v1, v1, [B

    const/4 v4, 0x0

    aput-byte v0, v1, v4

    aput-byte v2, v1, v3

    move-object v0, v1

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public blacklist getItem(I)[B
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The number of items : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PACMPacket"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Item type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Item size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, p1, :cond_0

    new-array v0, v6, [B

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public blacklist getResponsePacket(III)[B
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->initPacket(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->putItem(Ljava/lang/Object;I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist readStream(Ljava/io/InputStream;)V
    .locals 4

    const-string v0, "PACMPacket"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size is abnormal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read the stream from the client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist size()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    return v0
.end method
