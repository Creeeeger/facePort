.class public Lcom/android/net/module/util/DnsPacket$DnsRecord;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsRecord"
.end annotation


# static fields
.field public static final blacklist MAXNAMESIZE:I = 0xff

.field public static final blacklist NAME_COMPRESSION:I = 0xc0

.field public static final blacklist NAME_NORMAL:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DnsRecord"


# instance fields
.field public final blacklist dName:Ljava/lang/String;

.field private final blacklist mRdata:[B

.field public final blacklist nsClass:I

.field public final blacklist nsType:I

.field public final blacklist rType:I

.field public final blacklist ttl:J


# direct methods
.method private constructor blacklist <init>(ILjava/lang/String;IIJLjava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    invoke-static {p2}, Lcom/android/net/module/util/DnsPacket$DnsRecord;->requireHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    iput p3, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    iput p4, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    invoke-static {p8}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->domainNameToLabels(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    iput-wide p5, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected record type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse name fail, name size is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    invoke-static {p1}, Lcom/android/net/module/util/DnsPacket$DnsRecord;->requireHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    iput p2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    iput p3, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    return-void
.end method

.method public static blacklist makeAOrAAAARecord(ILjava/lang/String;IJLjava/net/InetAddress;)Lcom/android/net/module/util/DnsPacket$DnsRecord;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    move v4, v0

    new-instance v0, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    const/4 v9, 0x0

    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(ILjava/lang/String;IIJLjava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist makeCNameRecord(ILjava/lang/String;IJLjava/lang/String;)Lcom/android/net/module/util/DnsPacket$DnsRecord;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v9, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    const/4 v3, 0x5

    const/4 v7, 0x0

    move-object v0, v9

    move v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(ILjava/lang/String;IIJLjava/net/InetAddress;Ljava/lang/String;)V

    return-object v9
.end method

.method public static blacklist makeQuestion(Ljava/lang/String;II)Lcom/android/net/module/util/DnsPacket$DnsRecord;
    .locals 1

    new-instance v0, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static blacklist parse(ILjava/nio/ByteBuffer;)Lcom/android/net/module/util/DnsPacket$DnsRecord;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    packed-switch v1, :pswitch_data_0

    new-instance v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    invoke-direct {v2, p0, p1}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v2

    :pswitch_0
    new-instance v2, Lcom/android/net/module/util/DnsSvcbRecord;

    invoke-direct {v2, p0, p1}, Lcom/android/net/module/util/DnsSvcbRecord;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist requireHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->isHostName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected domain name but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    iget v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    iget v4, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    iget v4, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    iget v4, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    if-ne v2, v4, :cond_2

    iget-wide v4, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    iget-wide v6, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    iget-object v4, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    return v0
.end method

.method public blacklist getBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->domainNameToLabels(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist getRR()[B
    .locals 1

    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    const-wide/16 v3, -0x1

    and-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v1, v1, 0x29

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    mul-int/lit8 v1, v1, 0x2f

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DnsRecord{rType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nsClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
