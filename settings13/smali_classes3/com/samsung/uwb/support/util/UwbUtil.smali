.class public final Lcom/samsung/uwb/support/util/UwbUtil;
.super Ljava/lang/Object;
.source "UwbUtil.java"


# static fields
.field private static HEXCHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 27
    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    return-void

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
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v2, 0x3

    aput-byte p0, v1, v2

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 103
    aget-byte v2, v1, v3

    .line 104
    sget-object v4, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    sget-object v4, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 63
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 64
    sget-object v3, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    sget-object v3, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
