.class public Lcom/samsung/android/knox/dar/ddar/securesession/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final blacklist HEX_ARRAY:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist byteArrayToHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B

    .line 16
    array-length v0, p0

    .line 17
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 18
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    sget-object v5, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->HEX_ARRAY:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    .line 20
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 23
    .local v2, "str":Ljava/lang/String;
    const/16 v3, 0x30

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 24
    return-object v2
.end method

.method public static blacklist decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 58
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist encodeBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # [B

    .line 45
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final blacklist fromHexString(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 33
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 34
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 35
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 33
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 37
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
