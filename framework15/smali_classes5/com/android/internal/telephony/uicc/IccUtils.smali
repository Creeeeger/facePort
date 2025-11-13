.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final blacklist FPLMN_BYTE_SIZE:I = 0x3

.field private static final blacklist HEX_CHARS:[C

.field public static final blacklist ICCID_ALL_FF:I = 0xff

.field public static final blacklist ICCID_HAS_CHAR:I = 0x1

.field public static final blacklist ICCID_NO_HAS_CHAR:I = 0x0

.field static final blacklist LOG_TAG:Ljava/lang/String; = "IccUtils"

.field public static final blacklist TEST_ICCID:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

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

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist SSbcdToString([BII)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_8

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x2b

    const/16 v5, 0x23

    const/16 v6, 0x9

    const/16 v7, 0x91

    const/16 v8, 0x2a

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/4 v11, 0x1

    if-ne v3, v10, :cond_0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, v7, :cond_3

    add-int/lit8 v12, p1, 0x1

    sub-int v12, v2, v12

    if-le v12, v11, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-ne v3, v9, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-le v3, v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v3, 0x30

    int-to-char v12, v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    aget-byte v12, p0, v2

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v3, v12, 0xf

    if-ne v3, v10, :cond_4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, v7, :cond_7

    add-int/lit8 v5, p1, 0x1

    sub-int v5, v2, v5

    if-le v5, v11, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-ne v3, v9, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-le v3, v6, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist adnStringFieldToString([BII)Ljava/lang/String;
    .locals 6

    if-nez p2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v4, v0, 0x2

    const-string/jumbo v5, "utf-16be"

    invoke-direct {v2, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "IccUtils"

    const-string/jumbo v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt p2, v3, :cond_4

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    add-int/lit8 v3, p2, -0x3

    if-le v2, v3, :cond_3

    add-int/lit8 v2, p2, -0x3

    :cond_3
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    int-to-char v1, v3

    add-int/lit8 p1, p1, 0x3

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    if-lt p2, v3, :cond_6

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_6

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    add-int/lit8 v3, p2, -0x4

    if-le v2, v3, :cond_5

    add-int/lit8 v2, p2, -0x4

    :cond_5
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v1, v3

    add-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    :cond_6
    :goto_2
    if-eqz v0, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    if-lez v2, :cond_9

    aget-byte v4, p0, p1

    if-gez v4, :cond_7

    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x7f

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_8

    add-int v5, p1, v4

    aget-byte v5, p0, v5

    if-ltz v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v4

    sub-int/2addr v2, v4

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, ""

    nop

    const v5, 0x1040616

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    goto :goto_5

    :catch_1
    move-exception v5

    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist bcdPlmnToString([BI)Ljava/lang/String;
    .locals 4

    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [B

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[BI)V

    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[BI)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static blacklist bcdToString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist bcdToString([BII)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_3

    aget-byte v2, p0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    const/16 v4, 0x9

    if-le v2, v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v2, v5, 0xf

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-le v2, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bcdToStringForIccId([BII)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "ro.csc.countryiso_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    array-length v1, p0

    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bchToString([BII)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist bitToRGB(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method public static blacklist byteArrayToBinaryString([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToBinaryString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist byteNumForInt(IZ)I
    .locals 4

    if-ltz p0, :cond_6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/16 v3, 0x7f

    if-gt p0, v3, :cond_0

    return v2

    :cond_0
    const/16 v2, 0x7fff

    if-gt p0, v2, :cond_1

    return v1

    :cond_1
    const v1, 0x7fffff

    if-gt p0, v1, :cond_5

    return v0

    :cond_2
    const/16 v3, 0xff

    if-gt p0, v3, :cond_3

    return v2

    :cond_3
    const v2, 0xffff

    if-gt p0, v2, :cond_4

    return v1

    :cond_4
    const v1, 0xffffff

    if-gt p0, v1, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x4

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist byteNumForSignedInt(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist byteNumForUnsignedInt(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist byteToBinaryString(B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00000000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    rsub-int/lit8 v2, v1, 0x7

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit16 v2, p0, 0xff

    ushr-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    aput-char v1, v3, v4

    const/4 v1, 0x1

    aput-char v2, v3, v1

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static blacklist byteToHexString(B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    const-string v2, "0123456789abcdef"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p0, 0xf

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist bytesToHexString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit8 v2, v3, 0xf

    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bytesToInt([BII)I
    .locals 4

    const/4 v0, 0x4

    if-gt p2, v0, :cond_3

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    shl-int/lit8 v2, v0, 0x8

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    return v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src cannot be parsed as a positive integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length must be <= 4 (only 32-bit integer supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist bytesToRawLong([BII)J
    .locals 8

    const/16 v0, 0x8

    if-gt p2, v0, :cond_2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    shl-long v4, v1, v0

    add-int v6, p1, v3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length must be <= 8 (only 64-bit long supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist cdmaBcdByteToInt(B)I
    .locals 3

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static greylist cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v1, p2, :cond_3

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v3, v5, 0xf

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist cdmaHexByteToInt(B)I
    .locals 4

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0xf

    const/16 v3, 0xf0

    if-gt v1, v3, :cond_0

    shr-int/lit8 v1, p0, 0x4

    and-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x10

    :cond_0
    and-int/lit8 v1, p0, 0xf

    if-gt v1, v2, :cond_1

    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static blacklist cdmaIntToBcdByte(I)B
    .locals 3

    const/4 v0, 0x0

    div-int/lit8 v1, p0, 0xa

    int-to-byte v1, v1

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    div-int/lit8 v1, p0, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v0, v1

    :cond_0
    rem-int/lit8 v1, p0, 0xa

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    rem-int/lit8 v1, p0, 0xa

    add-int/2addr v1, v0

    int-to-byte v0, v1

    :cond_1
    return v0
.end method

.method private static blacklist charToByte(C)B
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x37

    int-to-byte v0, v0

    return v0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x57

    int-to-byte v0, v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist countTrailingZeros(B)B
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x7

    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, -0x4

    int-to-byte v1, v2

    :cond_1
    and-int/lit8 v2, v0, 0x33

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, -0x2

    int-to-byte v1, v2

    :cond_2
    and-int/lit8 v2, v0, 0x55

    if-eqz v2, :cond_3

    add-int/lit8 v2, v1, -0x1

    int-to-byte v1, v2

    :cond_3
    return v1
.end method

.method public static blacklist encodeFplmns(Ljava/util/List;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lt v1, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBcdPlmn(Ljava/lang/String;[BI)V

    nop

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_2

    add-int/lit8 v2, v1, 0x1

    const/4 v3, -0x1

    aput-byte v3, v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static blacklist getCLUT([BII)[I
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-array v0, p2, [I

    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    move v2, p1

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    :goto_0
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v3

    if-lt v6, v1, :cond_1

    return-object v0

    :cond_1
    move v3, v5

    move v2, v6

    goto :goto_0
.end method

.method public static blacklist getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIccType(I)I
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "ril.ICC_TYPE0"

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string/jumbo v1, "ril.ICC_TYPE1"

    :cond_0
    :try_start_0
    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "IccUtils"

    const-string/jumbo v4, "getIccType Exception:"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private static blacklist getStringMCC(J)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v1, 0x3e8

    rem-long/2addr p0, v1

    const-wide/16 v1, 0x64

    div-long v3, p0, v1

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    const-wide/16 v7, 0x30

    const-wide/16 v9, 0x31

    if-nez v3, :cond_0

    move-wide v3, v7

    goto :goto_0

    :cond_0
    div-long v3, p0, v1

    add-long/2addr v3, v9

    :goto_0
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long/2addr p0, v1

    const-wide/16 v1, 0xa

    div-long v3, p0, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move-wide v3, v7

    goto :goto_1

    :cond_1
    div-long v3, p0, v1

    add-long/2addr v3, v9

    :goto_1
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long v3, p0, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    rem-long v1, p0, v1

    add-long v7, v1, v9

    :goto_2
    long-to-int v1, v7

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getStringMIN1(J)Ljava/lang/String;
    .locals 19

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    :goto_0
    const-wide/16 v3, 0x7

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p0

    goto/16 :goto_8

    :cond_1
    const/16 v1, 0xe

    shr-long v1, p0, v1

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    const-wide/16 v5, 0x64

    div-long v7, v1, v5

    const-wide/16 v9, 0x9

    cmp-long v7, v7, v9

    const-wide/16 v11, 0x31

    const-wide/16 v13, 0x30

    if-nez v7, :cond_2

    move-wide v7, v13

    goto :goto_1

    :cond_2
    div-long v7, v1, v5

    add-long/2addr v7, v11

    :goto_1
    long-to-int v7, v7

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long/2addr v1, v5

    const-wide/16 v7, 0xa

    div-long v15, v1, v7

    cmp-long v15, v15, v9

    if-nez v15, :cond_3

    move-wide v5, v13

    goto :goto_2

    :cond_3
    div-long v15, v1, v7

    add-long/2addr v15, v11

    move-wide v5, v15

    :goto_2
    long-to-int v5, v5

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long v5, v1, v7

    cmp-long v5, v5, v9

    if-nez v5, :cond_4

    move-wide v5, v13

    goto :goto_3

    :cond_4
    rem-long v5, v1, v7

    add-long/2addr v5, v11

    :goto_3
    long-to-int v5, v5

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3fff

    and-long v5, p0, v5

    const/16 v15, 0xa

    shr-long v15, v5, v15

    const-wide/16 v17, 0xf

    and-long v1, v15, v17

    cmp-long v15, v1, v7

    if-nez v15, :cond_5

    goto :goto_4

    :cond_5
    add-long v15, v1, v13

    move-wide v13, v15

    :goto_4
    long-to-int v13, v13

    int-to-char v13, v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x3ff

    and-long v1, v5, v13

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long v13, v1, v3

    cmp-long v13, v13, v9

    if-nez v13, :cond_6

    const-wide/16 v13, 0x30

    goto :goto_5

    :cond_6
    div-long v13, v1, v3

    add-long/2addr v13, v11

    :goto_5
    long-to-int v13, v13

    int-to-char v13, v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long/2addr v1, v3

    div-long v3, v1, v7

    cmp-long v3, v3, v9

    if-nez v3, :cond_7

    const-wide/16 v3, 0x30

    goto :goto_6

    :cond_7
    div-long v3, v1, v7

    add-long/2addr v3, v11

    :goto_6
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long v3, v1, v7

    cmp-long v3, v3, v9

    if-nez v3, :cond_8

    const-wide/16 v13, 0x30

    goto :goto_7

    :cond_8
    rem-long v3, v1, v7

    add-long v13, v3, v11

    :goto_7
    long-to-int v3, v13

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getStringMIN2(J)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v1, 0x3e8

    rem-long/2addr p0, v1

    const-wide/16 v1, 0x64

    div-long v3, p0, v1

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    const-wide/16 v7, 0x30

    const-wide/16 v9, 0x31

    if-nez v3, :cond_0

    move-wide v3, v7

    goto :goto_0

    :cond_0
    div-long v3, p0, v1

    add-long/2addr v3, v9

    :goto_0
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long/2addr p0, v1

    const-wide/16 v1, 0xa

    div-long v3, p0, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move-wide v3, v7

    goto :goto_1

    :cond_1
    div-long v3, p0, v1

    add-long/2addr v3, v9

    :goto_1
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long v3, p0, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    rem-long v1, p0, v1

    add-long v7, v1, v9

    :goto_2
    long-to-int v1, v7

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getStringMNC(J)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v1, 0x64

    rem-long/2addr p0, v1

    const-wide/16 v1, 0xa

    div-long v3, p0, v1

    const-wide/16 v5, 0x9

    cmp-long v3, v3, v5

    const-wide/16 v7, 0x30

    const-wide/16 v9, 0x31

    if-nez v3, :cond_0

    move-wide v3, v7

    goto :goto_0

    :cond_0
    div-long v3, p0, v1

    add-long/2addr v3, v9

    :goto_0
    long-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long v3, p0, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    rem-long v1, p0, v1

    add-long v7, v1, v9

    :goto_1
    long-to-int v1, v7

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist gsmBcdByteToInt(B)I
    .locals 3

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static greylist-max-r hexCharToInt(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid hex char \'"

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

.method public static greylist hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static blacklist intToBytes(I[BIZ)I
    .locals 5

    invoke-static {p0, p3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    if-ltz p2, :cond_1

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    move v2, p0

    :goto_0
    if-ltz v1, :cond_0

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    add-int v4, p2, v1

    aput-byte v3, p1, v4

    add-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space to write. Required bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist isIccIdHasChar([BI)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, p1, :cond_1

    aget-byte v3, p0, v1

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/16 v1, 0xff

    return v1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_5

    aget-byte v4, p0, v3

    and-int/2addr v4, v2

    aget-byte v5, p0, v3

    shr-int/lit8 v5, v5, 0x4

    and-int/2addr v5, v2

    const/16 v6, 0x9

    if-gt v4, v6, :cond_4

    if-le v5, v6, :cond_3

    add-int/lit8 v6, p1, -0x1

    if-eq v3, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1

    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist mapTo2OrderBitColor([BII[II)[I
    .locals 9

    const/16 v0, 0x8

    rem-int v1, v0, p4

    if-eqz v1, :cond_0

    const-string v0, "IccUtils"

    const-string/jumbo v1, "not event number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v1, 0xff

    goto :goto_0

    :sswitch_1
    const/16 v1, 0xf

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x1

    nop

    :goto_0
    new-array v2, p2, [I

    const/4 v3, 0x0

    div-int/2addr v0, p4

    :goto_1
    if-ge v3, p2, :cond_2

    add-int/lit8 v4, p1, 0x1

    aget-byte p1, p0, p1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_1

    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v3, 0x1

    mul-int v8, v6, p4

    shr-int v8, p1, v8

    and-int/2addr v8, v1

    aget v8, p3, v8

    aput v8, v2, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_2

    :cond_1
    move p1, v4

    goto :goto_1

    :cond_2
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist mapToNon2OrderBitColor([BII[II)[I
    .locals 2

    const/16 v0, 0x8

    rem-int/2addr v0, p4

    if-nez v0, :cond_0

    const-string v0, "IccUtils"

    const-string/jumbo v1, "not odd number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, p2, [I

    return-object v0
.end method

.method public static blacklist mccMncConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IccUtils"

    if-nez v2, :cond_0

    const-string v2, "[MccMncConvert] MCC Value is invalid(\'fff\')!"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ddd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "mccMncConvert Exception:"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x46

    if-eq v4, v5, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x66

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v2, 0x136

    if-lt v0, v2, :cond_4

    const/16 v2, 0x13c

    if-gt v0, v2, :cond_4

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MccMncConvert] Convert Result :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist networkNameToString([BII)Ljava/lang/String;
    .locals 4

    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v0, p0, p1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    const-string/jumbo v3, "utf-16"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    const-string v2, "IccUtils"

    const-string/jumbo v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    aget-byte v1, p0, p1

    return-object v0

    :cond_1
    :goto_1
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    mul-int v3, v0, v1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    rem-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_0

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p0, v2

    const/4 v6, 0x7

    move v7, v2

    move v2, v8

    :cond_0
    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v6, -0x1

    shr-int v6, v7, v6

    and-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v6

    aput v6, v4, v5

    move v5, v8

    move v6, v9

    goto :goto_0

    :cond_1
    if-eq v5, v3, :cond_2

    const-string v8, "IccUtils"

    const-string/jumbo v9, "parse end and size error"

    invoke-static {v8, v9}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static greylist parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    invoke-static {p0, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v5

    const/4 v8, 0x1

    if-ne v8, p2, :cond_0

    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    :cond_0
    const/4 v8, 0x0

    rem-int/2addr v6, v2

    if-nez v6, :cond_1

    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v6

    goto :goto_0

    :cond_1
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v6

    :goto_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static blacklist setUiccProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    const-string v3, ","

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v4, "IccUtils"

    if-ltz p0, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v5

    if-lt p0, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-ge v5, p0, :cond_4

    const-string v6, ""

    if-eqz v1, :cond_3

    array-length v7, v1

    if-ge v5, v7, :cond_3

    aget-object v6, v1, v5

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5

    add-int/lit8 v5, p0, 0x1

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_2

    :catch_0
    move-exception v5

    const-string/jumbo v6, "setUiccProperty: utf-8 not supported"

    invoke-static {v4, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/16 v5, 0x5b

    if-le v3, v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUiccProperty: property too long property="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUiccProperty: invalid phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist setupCallbcdToString([BII)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x91

    if-ne v1, v2, :cond_0

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, p1, 0x1

    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_9

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x2c

    const/16 v5, 0x9

    const/16 v6, 0x23

    const/16 v7, 0xc

    const/16 v8, 0x2a

    const/16 v9, 0xb

    const/16 v10, 0xa

    if-ne v3, v10, :cond_1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-ne v3, v9, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-ne v3, v7, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-le v3, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v3, 0x30

    int-to-char v11, v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    aget-byte v11, p0, v2

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v3, v11, 0xf

    if-ne v3, v10, :cond_5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-ne v3, v9, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-ne v3, v7, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    if-le v3, v5, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist setupMDNbcdToString([BII)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v1, p1, 0x1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_8

    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x23

    const/16 v4, 0x9

    const/16 v5, 0x2a

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x30

    if-ne v2, v8, :cond_0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-ne v2, v7, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-ne v2, v6, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-le v2, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v2, 0x30

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    aget-byte v10, p0, v1

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v2, v10, 0xf

    if-ne v2, v8, :cond_4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-ne v2, v7, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-ne v2, v6, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-le v2, v4, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist signedIntToBytes(I[BI)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist signedIntToBytes(I)[B
    .locals 3

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForSignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I[BI)I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist stringToAdnStringField(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-array v2, v1, [B

    array-length v3, v2

    invoke-static {p0, v2, v0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    return-object v2

    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    const/16 v5, -0x80

    aput-byte v5, v3, v0

    array-length v5, v2

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public static blacklist stringToBcdPlmn(Ljava/lang/String;[BI)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v1

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/2addr v3, v2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v2, v3, 0x4

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    return-void
.end method

.method public static blacklist stringToBytes(Ljava/lang/String;)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static blacklist stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "FFFFFFFFFFFFFFFFFFFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "(?i)f*$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.csc.countryiso_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist unsigned32(B)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist unsignedIntToBytes(I[BI)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist unsignedIntToBytes(I)[B
    .locals 3

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
