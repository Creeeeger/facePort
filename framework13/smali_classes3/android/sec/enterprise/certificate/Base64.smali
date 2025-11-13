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

    .line 28
    invoke-static {}, Landroid/sec/enterprise/certificate/Base64;->initializeBase64Alphabet()[B

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist base64AlphabetToNumericalValue(B)B
    .locals 2
    .param p0, "c"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
        }
    .end annotation

    .line 241
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 242
    add-int/lit8 v0, p0, -0x41

    int-to-byte v0, v0

    return v0

    .line 244
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 245
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    return v0

    .line 247
    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 248
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x34

    int-to-byte v0, v0

    return v0

    .line 250
    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    .line 251
    const/16 v0, 0x3e

    return v0

    .line 253
    :cond_3
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_4

    .line 254
    const/16 v0, 0x3f

    return v0

    .line 256
    :cond_4
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_5

    .line 257
    const/4 v0, -0x1

    return v0

    .line 259
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

    .line 262
    :cond_6
    new-instance v0, Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;-><init>(Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException-IA;)V

    throw v0

    .line 260
    :cond_7
    :goto_0
    const/4 v0, -0x2

    return v0
.end method

.method private static blacklist checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B
    .locals 2
    .param p0, "output"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "inLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
        }
    .end annotation

    .line 227
    :goto_0
    if-ge p2, p3, :cond_1

    .line 228
    aget-byte v0, p1, p2

    invoke-static {v0}, Landroid/sec/enterprise/certificate/Base64;->base64AlphabetToNumericalValue(B)B

    move-result v0

    .line 229
    .local v0, "c":B
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 230
    const/4 v1, 0x0

    return-object v1

    .line 232
    :cond_0
    nop

    .end local v0    # "c":B
    add-int/lit8 p2, p2, 0x1

    .line 233
    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist computeEncodingOutputLen(I)I
    .locals 3
    .param p0, "inLength"    # I

    .line 99
    rem-int/lit8 v0, p0, 0x3

    .line 100
    .local v0, "inLengthMod3":I
    div-int/lit8 v1, p0, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 101
    .local v1, "outputLen":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 103
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 104
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 106
    add-int/lit8 v1, v1, 0x4

    .line 108
    :cond_1
    :goto_0
    return v1
.end method

.method public static blacklist decode([B)[B
    .locals 1
    .param p0, "in"    # [B

    .line 112
    array-length v0, p0

    invoke-static {p0, v0}, Landroid/sec/enterprise/certificate/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist decode([BI)[B
    .locals 13
    .param p0, "in"    # [B
    .param p1, "len"    # I

    .line 117
    array-length v0, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    .local v0, "inLength":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 121
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 124
    .local v3, "pos":[I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    aget v6, v3, v5

    if-ge v6, v0, :cond_8

    .line 125
    const/4 v6, 0x0

    .line 129
    .local v6, "byteTripletAsInt":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/4 v8, 0x4

    if-ge v7, v8, :cond_7

    .line 130
    invoke-static {p0, v3, v0}, Landroid/sec/enterprise/certificate/Base64;->getNextByte([B[II)B

    move-result v9

    .line 131
    .local v9, "c":B
    const/4 v10, -0x1

    const/4 v11, -0x3

    if-eq v9, v11, :cond_1

    if-ne v9, v10, :cond_0

    goto :goto_2

    .line 173
    :cond_0
    shl-int/lit8 v6, v6, 0x6

    .line 174
    and-int/lit16 v8, v9, 0xff

    add-int/2addr v6, v8

    .line 175
    aget v8, v3, v5

    add-int/2addr v8, v2

    aput v8, v3, v5

    goto :goto_3

    .line 133
    :cond_1
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 170
    goto :goto_3

    .line 164
    :pswitch_0
    if-ne v9, v10, :cond_2

    .line 166
    shr-int/lit8 v6, v6, 0x2

    .line 167
    shr-int/lit8 v2, v6, 0x8

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 170
    :cond_2
    aget v2, v3, v5

    invoke-static {v1, p0, v2, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v2

    return-object v2

    .line 141
    :pswitch_1
    if-ne v9, v11, :cond_3

    .line 143
    aget v2, v3, v5

    invoke-static {v1, p0, v2, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v2

    return-object v2

    .line 146
    :cond_3
    aget v12, v3, v5

    add-int/2addr v12, v2

    aput v12, v3, v5

    .line 147
    invoke-static {p0, v3, v0}, Landroid/sec/enterprise/certificate/Base64;->getNextByte([B[II)B

    move-result v2

    .line 148
    .end local v9    # "c":B
    .local v2, "c":B
    if-ne v2, v11, :cond_4

    .line 150
    aget v5, v3, v5

    invoke-static {v1, p0, v5, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v4

    return-object v4

    .line 152
    :cond_4
    if-ne v2, v10, :cond_5

    .line 153
    shr-int/2addr v6, v8

    .line 154
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    aget v5, v3, v5

    invoke-static {v1, p0, v5, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v4

    return-object v4

    .line 158
    :cond_5
    return-object v4

    .line 136
    .end local v2    # "c":B
    .restart local v9    # "c":B
    :pswitch_2
    if-ne v9, v11, :cond_6

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :cond_6
    return-object v4

    .line 129
    .end local v9    # "c":B
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 179
    .end local v7    # "j":I
    :cond_7
    shr-int/lit8 v5, v6, 0x10

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 180
    shr-int/lit8 v5, v6, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 181
    and-int/lit16 v5, v6, 0xff

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 182
    .end local v6    # "byteTripletAsInt":I
    goto :goto_0

    .line 183
    :cond_8
    aget v2, v3, v5

    invoke-static {v1, p0, v2, v0}, Landroid/sec/enterprise/certificate/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
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
    .param p0, "in"    # [B

    .line 44
    array-length v0, p0

    .line 45
    .local v0, "len":I
    invoke-static {v0}, Landroid/sec/enterprise/certificate/Base64;->computeEncodingOutputLen(I)I

    move-result v1

    .line 46
    .local v1, "outputLen":I
    new-array v2, v1, [B

    .line 48
    .local v2, "output":[B
    const/4 v3, 0x0

    .line 49
    .local v3, "outputIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 53
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 54
    .local v5, "byteTripletAsInt":I
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v0, :cond_1

    .line 56
    shl-int/lit8 v5, v5, 0x8

    .line 57
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 58
    add-int/lit8 v6, v4, 0x2

    if-ge v6, v0, :cond_0

    .line 59
    shl-int/lit8 v5, v5, 0x8

    .line 60
    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    goto :goto_1

    .line 63
    :cond_0
    shl-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 67
    :cond_1
    shl-int/lit8 v5, v5, 0x4

    .line 70
    :goto_1
    add-int/lit8 v6, v4, 0x2

    if-ge v6, v0, :cond_2

    .line 72
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "outputIndex":I
    .local v6, "outputIndex":I
    sget-object v7, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    const/high16 v8, 0xfc0000

    and-int/2addr v8, v5

    ushr-int/lit8 v8, v8, 0x12

    aget-byte v7, v7, v8

    aput-byte v7, v2, v3

    move v3, v6

    .line 75
    .end local v6    # "outputIndex":I
    .restart local v3    # "outputIndex":I
    :cond_2
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v0, :cond_3

    .line 77
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    sget-object v7, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    const v8, 0x3f000

    and-int/2addr v8, v5

    ushr-int/lit8 v8, v8, 0xc

    aget-byte v7, v7, v8

    aput-byte v7, v2, v3

    move v3, v6

    .line 80
    .end local v6    # "outputIndex":I
    .restart local v3    # "outputIndex":I
    :cond_3
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    sget-object v7, Landroid/sec/enterprise/certificate/Base64;->BASE_64_ALPHABET:[B

    and-int/lit16 v8, v5, 0xfc0

    ushr-int/lit8 v8, v8, 0x6

    aget-byte v8, v7, v8

    aput-byte v8, v2, v3

    .line 82
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "outputIndex":I
    .restart local v3    # "outputIndex":I
    and-int/lit8 v8, v5, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v2, v6

    .line 49
    .end local v5    # "byteTripletAsInt":I
    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 86
    .end local v4    # "i":I
    :cond_4
    rem-int/lit8 v4, v0, 0x3

    .line 88
    .local v4, "inLengthMod3":I
    if-lez v4, :cond_6

    .line 89
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "outputIndex":I
    .local v5, "outputIndex":I
    const/16 v6, 0x3d

    aput-byte v6, v2, v3

    .line 90
    const/4 v3, 0x1

    if-ne v4, v3, :cond_5

    .line 91
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "outputIndex":I
    .restart local v3    # "outputIndex":I
    aput-byte v6, v2, v5

    goto :goto_2

    .line 90
    .end local v3    # "outputIndex":I
    .restart local v5    # "outputIndex":I
    :cond_5
    move v3, v5

    .line 95
    .end local v5    # "outputIndex":I
    .restart local v3    # "outputIndex":I
    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v5
.end method

.method private static blacklist getNextByte([B[II)B
    .locals 3
    .param p0, "in"    # [B
    .param p1, "pos"    # [I
    .param p2, "inLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
        }
    .end annotation

    .line 208
    :goto_0
    const/4 v0, 0x0

    aget v1, p1, v0

    if-ge v1, p2, :cond_1

    .line 209
    aget v1, p1, v0

    aget-byte v1, p0, v1

    invoke-static {v1}, Landroid/sec/enterprise/certificate/Base64;->base64AlphabetToNumericalValue(B)B

    move-result v1

    .line 210
    .local v1, "c":B
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 211
    return v1

    .line 213
    :cond_0
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    .line 214
    .end local v1    # "c":B
    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, -0x3

    return v0
.end method

.method private static blacklist initializeBase64Alphabet()[B
    .locals 2

    .line 31
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 32
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 31
    return-object v0
.end method
