.class Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist calculateBodyLength(I)I
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-le p0, v1, :cond_1

    const/4 v1, 0x1

    move v2, p0

    :goto_0
    ushr-int/lit8 v3, v2, 0x8

    move v2, v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v3, v3, 0x8

    :goto_1
    if-ltz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_1

    :cond_1
    return v0
.end method

.method static blacklist calculateTagLength(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1f

    if-lt p0, v1, :cond_2

    const/16 v1, 0x80

    if-ge p0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, p0, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_1
    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, p0, 0x7f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v4, 0x7f

    if-gt p0, v4, :cond_1

    array-length v1, v2

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method static blacklist findLimit(Ljava/io/InputStream;)I
    .locals 6

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result v0

    return v0

    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result v0

    return v0

    :cond_1
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    :cond_2
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_5

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move-wide v3, v1

    :goto_0
    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    long-to-int v1, v3

    return v1

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v0

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_6

    const v0, 0x7fffffff

    return v0

    :cond_6
    long-to-int v0, v3

    return v0
.end method
