.class public Lcom/samsung/android/sec_platform_library/PacketBuilder;
.super Ljava/lang/Object;
.source "PacketBuilder.java"


# instance fields
.field private m_Command:[B

.field private m_Length:S

.field private m_bos:Ljava/io/ByteArrayOutputStream;

.field private m_dos:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(BB)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    .line 34
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 36
    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 p1, 0x1

    aput-byte p2, v1, p1

    .line 41
    array-length p1, v1

    add-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    return-void
.end method


# virtual methods
.method public addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;
    .locals 1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    :goto_0
    iget-short p1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    return-object p0
.end method

.method public getPacket()[B
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 83
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 88
    iget-short p0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 89
    array-length p0, v0

    invoke-virtual {v2, v0, v5, p0}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 94
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    :goto_1
    throw p0

    :catch_2
    const/4 p0, 0x0

    .line 94
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p0
.end method
