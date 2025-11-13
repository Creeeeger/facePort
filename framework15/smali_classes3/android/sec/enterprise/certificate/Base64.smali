.class public final Landroid/sec/enterprise/certificate/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
    }
.end annotation


# static fields
.field private static final blacklist BASE_64_ALPHABET:[B

.field private static final blacklist END_OF_INPUT:B = -0x3t

.field private static final blacklist FIRST_OUTPUT_BYTE_MASK:I = 0xfc0000

.field private static final blacklist FOURTH_OUTPUT_BYTE_MASK:I = 0x3f

.field private static final blacklist PAD_AS_BYTE:B = -0x1t

.field private static final blacklist SECOND_OUTPUT_BYTE_MASK:I = 0x3f000

.field private static final blacklist THIRD_OUTPUT_BYTE_MASK:I = 0xfc0

.field private static final blacklist WHITESPACE_AS_BYTE:B = -0x2t


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/sec/enterprise/certificate/Base64;->initializeBase64Alphabet()[B

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist base64AlphabetToNumericalValue(B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
        }
    .end annotation

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x41

    int-to-byte v0, v0

    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    return v0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x34

    int-to-byte v0, v0

    return v0

    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    const/16 v0, 0x3e

    return v0

    :cond_3
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_4

    const/16 v0, 0x3f

    return v0

    :cond_4
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_5

    const/4 v0, -0x1

    return v0

    :cond_5
    const/16 v0, 0x20

    if-eq p0, v0, :cond_7

    const/16 v0, 0x9

    if-eq p0, v0, :cond_7

    const/16 v0, 0xd

    if-eq p0, v0, :cond_7

    const/16 v0, 0xa

    if-ne p0, v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;-><init>(Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException-IA;)V

    throw v0

    :cond_7
    :goto_0
    const/4 v0, -0x2

    return v0
.end method

.method private static blacklist checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
        }
    .end annotation

    nop

    :goto_0
    if-ge p2, p3, :cond_1

    aget-byte v0, p1, p2

    invoke-static {v0}, Landroid/sec/enterprise/certificate/Base64;->base64AlphabetToNumericalValue(B)B

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    nop

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist computeEncodingOutputLen(I)I
    .locals 3

    rem-int/lit8 v0, p0, 0x3

    div-int/lit8 v1, p0, 0x3

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x4

    :cond_1
    :goto_0
    return v1
.end method

.method public static blacklist decode([B)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Landroid/sec/enterprise/certificate/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist decode([BI)[B
    .locals 13

    array-length v0, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    aget v6, v3, v5

    if-ge v6, v0, :cond_8

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ge v7, v8, :cond_7

    invoke-static {p0, v3, v0}, Landroid/sec/enterprise/certificate/Base64;->getNextByte([B[II)B

    move-result v9

    const/4 v10, -0x1

    const/4 v11, -0x3

    if-eq v9, v11, :cond_1

    if-ne v9, v10, :cond_0

    goto :goto_2

    :cond_0
    shl-int/lit8 v6, v6, 0x6

    and-int/lit16 v8, v9, 0xff

    add-int/2addr v6, v8

    aget v8, v3, v5

    add-int/2addr v8, v2

    aput v8, v3, v5

    goto :goto_3

    :cond_1
    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-ne v9, v10, :cond_2

    shr-int/lit8 v6, v6, 0x2

    shr-int/lit8 v2, v6, 0x8

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    aget v2, v3, v5

    invoke-static {v1, p0, v2, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v2

    return-object v2

    :pswitch_1
    if-ne v9, v11, :cond_3

    aget v2, v3, v5

    invoke-static {v1, p0, v2, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v2

    return-object v2

    :cond_3
    aget v12, v3, v5

    add-int/2addr v12, v2

    aput v12, v3, v5

    invoke-static {p0, v3, v0}, Landroid/sec/enterprise/certificate/Base64;->getNextByte([B[II)B

    move-result v2

    if-ne v2, v11, :cond_4

    aget v5, v3, v5

    invoke-static {v1, p0, v5, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v4

    return-object v4

    :cond_4
    if-ne v2, v10, :cond_5

    shr-int/2addr v6, v8

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    aget v5, v3, v5

    invoke-static {v1, p0, v5, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v4

    return-object v4

    :cond_5
    return-object v4

    :pswitch_2
    if-ne v9, v11, :cond_6

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :cond_6
    return-object v4

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    shr-int/lit8 v5, v6, 0x10

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v5, v6, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v5, v6, 0xff

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_8
    aget v2, v3, v5

    invoke-static {v1, p0, v2, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist encode([B)Ljava/lang/String;
    .locals 9

    array-length v0, p0

    invoke-static {v0}, Landroid/sec/enterprise/certificate/Base64;->computeEncodingOutputLen(I)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    if-ge v6, v0, :cond_1

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    if-ge v6, v0, :cond_0

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    goto :goto_1

    :cond_0
    shl-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_1
    shl-int/lit8 v5, v5, 0x4

    :goto_1
    add-int/lit8 v6, v4, 0x2

    if-ge v6, v0, :cond_2

    add-int/lit8 v6, v3, 0x1

    sget-object v7, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    const/high16 v8, 0xfc0000

    and-int/2addr v8, v5

    ushr-int/lit8 v8, v8, 0x12

    aget-byte v7, v7, v8

    aput-byte v7, v2, v3

    move v3, v6

    :cond_2
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v0, :cond_3

    add-int/lit8 v6, v3, 0x1

    sget-object v7, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    const v8, 0x3f000

    and-int/2addr v8, v5

    ushr-int/lit8 v8, v8, 0xc

    aget-byte v7, v7, v8

    aput-byte v7, v2, v3

    move v3, v6

    :cond_3
    add-int/lit8 v6, v3, 0x1

    sget-object v7, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    and-int/lit16 v8, v5, 0xfc0

    ushr-int/lit8 v8, v8, 0x6

    aget-byte v7, v7, v8

    aput-byte v7, v2, v3

    add-int/lit8 v3, v6, 0x1

    sget-object v7, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    and-int/lit8 v8, v5, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v2, v6

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_4
    rem-int/lit8 v4, v0, 0x3

    if-lez v4, :cond_6

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x3d

    aput-byte v6, v2, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_5

    add-int/lit8 v3, v5, 0x1

    aput-byte v6, v2, v5

    goto :goto_2

    :cond_5
    move v3, v5

    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v5
.end method

.method private static blacklist getNextByte([B[II)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
        }
    .end annotation

    nop

    :goto_0
    const/4 v0, 0x0

    aget v1, p1, v0

    if-ge v1, p2, :cond_1

    aget v1, p1, v0

    aget-byte v1, p0, v1

    invoke-static {v1}, Landroid/sec/enterprise/certificate/Base64;->base64AlphabetToNumericalValue(B)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    return v0
.end method

.method private static blacklist initializeBase64Alphabet()[B
    .locals 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
