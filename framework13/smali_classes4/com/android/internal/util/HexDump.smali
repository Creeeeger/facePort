.class public Lcom/android/internal/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final blacklist HEX_DIGITS:[C

.field private static final blacklist HEX_LOWER_CASE_DIGITS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 24
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    .line 25
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B
    .param p2, "upperCase"    # Z

    .line 187
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    .line 188
    .local v0, "digits":[C
    :goto_0
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    return-object p0
.end method

.method public static blacklist dumpHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    .line 28
    if-nez p0, :cond_0

    const-string v0, "(null)"

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dumpHexString([BII)Ljava/lang/String;
    .locals 13
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 34
    if-nez p0, :cond_0

    const-string v0, "(null)"

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, "result":Ljava/lang/StringBuilder;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 38
    .local v2, "line":[B
    const/4 v3, 0x0

    .line 40
    .local v3, "lineIndex":I
    const-string v4, "\n0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move v5, p1

    .local v5, "i":I
    :goto_0
    add-int v6, p1, p2

    const/16 v7, 0x7e

    const-string v8, "."

    const/16 v9, 0x20

    const-string v10, " "

    const/4 v11, 0x1

    if-ge v5, v6, :cond_4

    .line 45
    if-ne v3, v1, :cond_3

    .line 47
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_2

    .line 51
    aget-byte v12, v2, v6

    if-le v12, v9, :cond_1

    aget-byte v12, v2, v6

    if-ge v12, v7, :cond_1

    .line 53
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2, v6, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 61
    .end local v6    # "j":I
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/4 v3, 0x0

    .line 66
    :cond_3
    aget-byte v6, p0, v5

    .line 67
    .local v6, "b":B
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-object v7, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "lineIndex":I
    .local v7, "lineIndex":I
    aput-byte v6, v2, v3

    .line 43
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 74
    .end local v5    # "i":I
    .end local v7    # "lineIndex":I
    .restart local v3    # "lineIndex":I
    :cond_4
    if-eq v3, v1, :cond_7

    .line 76
    rsub-int/lit8 v1, v3, 0x10

    mul-int/lit8 v1, v1, 0x3

    .line 77
    .local v1, "count":I
    add-int/2addr v1, v11

    .line 78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_5

    .line 80
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 83
    .end local v4    # "i":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v3, :cond_7

    .line 85
    aget-byte v5, v2, v4

    if-le v5, v9, :cond_6

    aget-byte v5, v2, v4

    if-ge v5, v7, :cond_6

    .line 87
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 91
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 96
    .end local v1    # "count":I
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 176
    .local v0, "length":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 178
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 180
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 178
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 183
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static blacklist toByte(C)I
    .locals 3
    .param p0, "c"    # C

    .line 165
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 166
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 167
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 169
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toByteArray(B)[B
    .locals 2
    .param p0, "b"    # B

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 147
    .local v0, "array":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 148
    return-object v0
.end method

.method public static blacklist toByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 155
    .local v0, "array":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 156
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 157
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 158
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 160
    return-object v0
.end method

.method public static blacklist toHexString(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .line 101
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .line 141
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist toHexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B

    .line 107
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist toHexString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 119
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toHexString([BIIZ)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "upperCase"    # Z

    .line 124
    if-eqz p3, :cond_0

    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    .line 125
    .local v0, "digits":[C
    :goto_0
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 127
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 128
    .local v2, "bufIndex":I
    move v3, p1

    .local v3, "i":I
    :goto_1
    add-int v4, p1, p2

    if-ge v3, v4, :cond_1

    .line 130
    aget-byte v4, p0, v3

    .line 131
    .local v4, "b":B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "bufIndex":I
    .local v5, "bufIndex":I
    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v2

    .line 132
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    and-int/lit8 v6, v4, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 128
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static greylist-max-r toHexString([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "upperCase"    # Z

    .line 113
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
