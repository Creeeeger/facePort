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

    .line 57
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist SSbcdToString([BII)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1083
    .local v0, "ret":Ljava/lang/StringBuilder;
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 1085
    .local v1, "ton":I
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_8

    .line 1088
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 1089
    .local v3, "v":I
    const/16 v4, 0x2b

    const/16 v5, 0x23

    const/16 v6, 0x9

    const/16 v7, 0x91

    const/16 v8, 0x2a

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/4 v11, 0x1

    if-ne v3, v10, :cond_0

    .line 1090
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1091
    if-ne v1, v7, :cond_3

    add-int/lit8 v12, p1, 0x1

    sub-int v12, v2, v12

    if-le v12, v11, :cond_3

    .line 1092
    const/4 v1, 0x0

    .line 1093
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1095
    :cond_0
    if-ne v3, v9, :cond_1

    .line 1096
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1098
    :cond_1
    if-le v3, v6, :cond_2

    goto :goto_3

    .line 1099
    :cond_2
    add-int/lit8 v12, v3, 0x30

    int-to-char v12, v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1102
    :cond_3
    :goto_1
    aget-byte v12, p0, v2

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v3, v12, 0xf

    .line 1103
    if-ne v3, v10, :cond_4

    .line 1104
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    if-ne v1, v7, :cond_7

    add-int/lit8 v5, p1, 0x1

    sub-int v5, v2, v5

    if-le v5, v11, :cond_7

    .line 1106
    const/4 v1, 0x0

    .line 1107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1109
    :cond_4
    if-ne v3, v9, :cond_5

    .line 1110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1112
    :cond_5
    if-le v3, v6, :cond_6

    goto :goto_3

    .line 1113
    :cond_6
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1085
    .end local v3    # "v":I
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1118
    .end local v2    # "i":I
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist adnStringFieldToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 352
    if-nez p2, :cond_0

    .line 353
    const-string v0, ""

    return-object v0

    .line 355
    :cond_0
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    .line 356
    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_2

    .line 357
    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 358
    .local v0, "ucslen":I
    const/4 v1, 0x0

    .line 361
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v4, v0, 0x2

    const-string/jumbo v5, "utf-16be"

    invoke-direct {v2, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 365
    goto :goto_0

    .line 362
    :catch_0
    move-exception v2

    .line 363
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "IccUtils"

    const-string/jumbo v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 371
    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_1

    .line 372
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 374
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 379
    .end local v0    # "ucslen":I
    .end local v1    # "ret":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 380
    .local v0, "isucs2":Z
    const/4 v1, 0x0

    .line 381
    .local v1, "base":C
    const/4 v2, 0x0

    .line 383
    .local v2, "len":I
    const/4 v3, 0x3

    if-lt p2, v3, :cond_4

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_4

    .line 384
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 385
    add-int/lit8 v3, p2, -0x3

    if-le v2, v3, :cond_3

    .line 386
    add-int/lit8 v2, p2, -0x3

    .line 388
    :cond_3
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    int-to-char v1, v3

    .line 389
    add-int/lit8 p1, p1, 0x3

    .line 390
    const/4 v0, 0x1

    goto :goto_2

    .line 391
    :cond_4
    const/4 v3, 0x4

    if-lt p2, v3, :cond_6

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_6

    .line 392
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 393
    add-int/lit8 v3, p2, -0x4

    if-le v2, v3, :cond_5

    .line 394
    add-int/lit8 v2, p2, -0x4

    .line 396
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

    .line 398
    add-int/lit8 p1, p1, 0x4

    .line 399
    const/4 v0, 0x1

    .line 402
    :cond_6
    :goto_2
    if-eqz v0, :cond_a

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v3, "ret":Ljava/lang/StringBuilder;
    :goto_3
    if-lez v2, :cond_9

    .line 408
    aget-byte v4, p0, p1

    if-gez v4, :cond_7

    .line 409
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x7f

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 p1, p1, 0x1

    .line 411
    add-int/lit8 v2, v2, -0x1

    .line 416
    :cond_7
    const/4 v4, 0x0

    .line 417
    .local v4, "count":I
    :goto_4
    if-ge v4, v2, :cond_8

    add-int v5, p1, v4

    aget-byte v5, p0, v5

    if-ltz v5, :cond_8

    .line 418
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 420
    :cond_8
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    add-int/2addr p1, v4

    .line 424
    sub-int/2addr v2, v4

    .line 425
    .end local v4    # "count":I
    goto :goto_3

    .line 427
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 430
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 431
    .local v3, "resource":Landroid/content/res/Resources;
    const-string v4, ""

    .line 433
    .local v4, "defaultCharset":Ljava/lang/String;
    const v5, 0x10405cd

    .line 434
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 437
    goto :goto_5

    .line 435
    :catch_1
    move-exception v5

    .line 438
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist bcdPlmnToString([BI)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 150
    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 154
    .local v0, "trans":[B
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

    .line 155
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

    .line 156
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

    .line 157
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_1
    return-object v1
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p0, "bcd"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[BI)V

    .line 124
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[BI)V
    .locals 5
    .param p0, "bcd"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 138
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    .line 140
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

    .line 139
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "bcd"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 111
    .local v0, "output":[B
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    .line 112
    return-object v0
.end method

.method public static blacklist bcdToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 101
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist bcdToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_3

    .line 83
    aget-byte v2, p0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 84
    .local v2, "v":I
    const/16 v4, 0x9

    if-le v2, v4, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 89
    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    if-le v2, v4, :cond_2

    goto :goto_2

    .line 91
    :cond_2
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .end local v2    # "v":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bcdToStringForIccId([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1382
    const-string/jumbo v0, "ro.csc.countryiso_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, "countryISO":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    array-length v1, p0

    .line 1384
    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1387
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1385
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bchToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 190
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 191
    .local v2, "v":I
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v2, v4, 0xf

    .line 194
    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist bitToRGB(I)I
    .locals 1
    .param p0, "bit"    # I

    .line 595
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 596
    const/4 v0, -0x1

    return v0

    .line 598
    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method public static blacklist byteArrayToBinaryString([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1373
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1374
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToBinaryString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist byteNumForInt(IZ)I
    .locals 4
    .param p0, "value"    # I
    .param p1, "signed"    # Z

    .line 881
    if-ltz p0, :cond_6

    .line 884
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 885
    const/16 v3, 0x7f

    if-gt p0, v3, :cond_0

    .line 886
    return v2

    .line 888
    :cond_0
    const/16 v2, 0x7fff

    if-gt p0, v2, :cond_1

    .line 889
    return v1

    .line 891
    :cond_1
    const v1, 0x7fffff

    if-gt p0, v1, :cond_5

    .line 892
    return v0

    .line 895
    :cond_2
    const/16 v3, 0xff

    if-gt p0, v3, :cond_3

    .line 896
    return v2

    .line 898
    :cond_3
    const v2, 0xffff

    if-gt p0, v2, :cond_4

    .line 899
    return v1

    .line 901
    :cond_4
    const v1, 0xffffff

    if-gt p0, v1, :cond_5

    .line 902
    return v0

    .line 905
    :cond_5
    const/4 v0, 0x4

    return v0

    .line 882
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
    .param p0, "value"    # I

    .line 865
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist byteNumForUnsignedInt(I)I
    .locals 1
    .param p0, "value"    # I

    .line 853
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist byteToBinaryString(B)Ljava/lang/String;
    .locals 4
    .param p0, "n"    # B

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00000000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "bit":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1364
    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    .line 1365
    rsub-int/lit8 v2, v1, 0x7

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1363
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1368
    .end local v1    # "bit":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B

    .line 934
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [C

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit16 v3, p0, 0xff

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    const/4 v4, 0x0

    aput-char v3, v1, v4

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    const/4 v3, 0x1

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static blacklist byteToHexString(B)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # B

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1148
    .local v0, "ret":Ljava/lang/StringBuilder;
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 1150
    .local v1, "b":I
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1152
    and-int/lit8 v1, p0, 0xf

    .line 1154
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 491
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 495
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 498
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 500
    .local v2, "b":I
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    .line 504
    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bytesToInt([BII)I
    .locals 4
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 731
    const/4 v0, 0x4

    if-gt p2, v0, :cond_3

    .line 735
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_2

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 746
    shl-int/lit8 v2, v0, 0x8

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v1    # "i":I
    :cond_0
    if-ltz v0, :cond_1

    .line 752
    return v0

    .line 749
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

    .line 736
    .end local v0    # "result":I
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

    .line 732
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
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 768
    const/16 v0, 0x8

    if-gt p2, v0, :cond_2

    .line 772
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 781
    const-wide/16 v1, 0x0

    .line 782
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 783
    shl-long v4, v1, v0

    add-int v6, p1, v3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    .line 782
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 785
    .end local v3    # "i":I
    :cond_0
    return-wide v1

    .line 773
    .end local v1    # "result":J
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

    .line 769
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
    .param p0, "b"    # B

    .line 265
    const/4 v0, 0x0

    .line 268
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 269
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 272
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 273
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 276
    :cond_1
    return v0
.end method

.method public static greylist cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 209
    .local v1, "count":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 211
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 212
    .local v3, "v":I
    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    .line 213
    :cond_0
    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_1

    goto :goto_1

    .line 217
    :cond_1
    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v3, v5, 0xf

    .line 218
    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    .line 219
    :cond_2
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    nop

    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist cdmaHexByteToInt(B)I
    .locals 4
    .param p0, "b"    # B

    .line 994
    const/4 v0, 0x0

    .line 997
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0xf0

    const/16 v3, 0xf

    if-gt v1, v2, :cond_0

    .line 998
    shr-int/lit8 v1, p0, 0x4

    and-int/2addr v1, v3

    mul-int/lit8 v0, v1, 0x10

    .line 1001
    :cond_0
    and-int/lit8 v1, p0, 0xf

    if-gt v1, v3, :cond_1

    .line 1002
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 1005
    :cond_1
    return v0
.end method

.method public static blacklist cdmaIntToBcdByte(I)B
    .locals 3
    .param p0, "i"    # I

    .line 1123
    const/4 v0, 0x0

    .line 1124
    .local v0, "ret":B
    div-int/lit8 v1, p0, 0xa

    int-to-byte v1, v1

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 1125
    div-int/lit8 v1, p0, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v0, v1

    .line 1128
    :cond_0
    rem-int/lit8 v1, p0, 0xa

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 1129
    rem-int/lit8 v1, p0, 0xa

    add-int/2addr v1, v0

    int-to-byte v0, v1

    .line 1132
    :cond_1
    return v0
.end method

.method private static blacklist charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .line 959
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 960
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    return v0

    .line 961
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 962
    add-int/lit8 v0, p0, -0x37

    int-to-byte v0, v0

    return v0

    .line 963
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 964
    add-int/lit8 v0, p0, -0x57

    int-to-byte v0, v0

    return v0

    .line 966
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 951
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
    .param p0, "b"    # B

    .line 913
    if-nez p0, :cond_0

    .line 914
    const/16 v0, 0x8

    return v0

    .line 916
    :cond_0
    and-int/lit16 v0, p0, 0xff

    .line 917
    .local v0, "v":I
    const/4 v1, 0x7

    .line 918
    .local v1, "c":B
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_1

    .line 919
    add-int/lit8 v2, v1, -0x4

    int-to-byte v1, v2

    .line 921
    :cond_1
    and-int/lit8 v2, v0, 0x33

    if-eqz v2, :cond_2

    .line 922
    add-int/lit8 v2, v1, -0x2

    int-to-byte v1, v2

    .line 924
    :cond_2
    and-int/lit8 v2, v0, 0x55

    if-eqz v2, :cond_3

    .line 925
    add-int/lit8 v2, v1, -0x1

    int-to-byte v1, v2

    .line 927
    :cond_3
    return v1
.end method

.method public static blacklist encodeFplmns(Ljava/util/List;I)[B
    .locals 4
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .line 977
    .local p0, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v0, p1, [B

    .line 978
    .local v0, "serializedFplmns":[B
    const/4 v1, 0x0

    .line 979
    .local v1, "offset":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 980
    .local v3, "fplmn":Ljava/lang/String;
    if-lt v1, p1, :cond_0

    goto :goto_1

    .line 981
    :cond_0
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBcdPlmn(Ljava/lang/String;[BI)V

    .line 982
    nop

    .end local v3    # "fplmn":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x3

    .line 983
    goto :goto_0

    .line 985
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_2

    .line 987
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    move v1, v2

    goto :goto_1

    .line 989
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_2
    return-object v0
.end method

.method private static blacklist getCLUT([BII)[I
    .locals 8
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    .line 691
    if-nez p0, :cond_0

    .line 692
    const/4 v0, 0x0

    return-object v0

    .line 695
    :cond_0
    new-array v0, p2, [I

    .line 696
    .local v0, "result":[I
    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    .line 697
    .local v1, "endIndex":I
    move v2, p1

    .line 698
    .local v2, "valueIndex":I
    const/4 v3, 0x0

    .line 699
    .local v3, "colorIndex":I
    const/high16 v4, -0x1000000

    .line 701
    .local v4, "alpha":I
    :goto_0
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "colorIndex":I
    .local v5, "colorIndex":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v6, "valueIndex":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v3

    .line 705
    if-lt v6, v1, :cond_1

    .line 706
    return-object v0

    .line 705
    :cond_1
    move v3, v5

    move v2, v6

    goto :goto_0
.end method

.method public static blacklist getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "iccId"    # Ljava/lang/String;

    .line 711
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 712
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 711
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIccType(I)I
    .locals 5
    .param p0, "phoneId"    # I

    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "icctype":I
    const-string/jumbo v1, "ril.ICC_TYPE0"

    .line 1415
    .local v1, "prop":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 1416
    const-string/jumbo v1, "ril.ICC_TYPE1"

    .line 1420
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

    .line 1423
    goto :goto_0

    .line 1421
    :catch_0
    move-exception v2

    .line 1422
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "IccUtils"

    const-string v4, "getIccType Exception:"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1424
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method private static blacklist getStringMCC(J)Ljava/lang/String;
    .locals 11
    .param p0, "mcc"    # J

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1221
    .local v0, "strMCC":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x3e8

    rem-long/2addr p0, v1

    .line 1222
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

    .line 1223
    rem-long/2addr p0, v1

    .line 1224
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

    .line 1225
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

    .line 1227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getStringMIN1(J)Ljava/lang/String;
    .locals 19
    .param p0, "min1"    # J

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1247
    .local v0, "strMIN1":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_1

    .line 1248
    const-wide/16 v1, 0x0

    .local v1, "i":J
    :goto_0
    const-wide/16 v3, 0x7

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1249
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1248
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p0

    goto/16 :goto_8

    .line 1253
    .end local v1    # "i":J
    :cond_1
    const/16 v1, 0xe

    shr-long v1, p0, v1

    .line 1254
    .restart local v1    # "i":J
    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    .line 1255
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

    .line 1256
    rem-long/2addr v1, v5

    .line 1257
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

    .line 1258
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

    .line 1260
    const-wide/16 v5, 0x3fff

    and-long v5, p0, v5

    .line 1262
    .end local p0    # "min1":J
    .local v5, "min1":J
    const/16 v15, 0xa

    shr-long v15, v5, v15

    const-wide/16 v17, 0xf

    and-long v1, v15, v17

    .line 1263
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

    .line 1265
    const-wide/16 v13, 0x3ff

    and-long v1, v5, v13

    .line 1266
    rem-long/2addr v1, v3

    .line 1267
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

    .line 1268
    rem-long/2addr v1, v3

    .line 1272
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

    .line 1273
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

    .line 1276
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getStringMIN2(J)Ljava/lang/String;
    .locals 11
    .param p0, "min2"    # J

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1283
    .local v0, "strMIN2":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x3e8

    rem-long/2addr p0, v1

    .line 1284
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

    .line 1285
    rem-long/2addr p0, v1

    .line 1286
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

    .line 1287
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

    .line 1289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getStringMNC(J)Ljava/lang/String;
    .locals 11
    .param p0, "mnc"    # J

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1234
    .local v0, "strMNC":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x64

    rem-long/2addr p0, v1

    .line 1236
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

    .line 1237
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

    .line 1239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist gsmBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .line 242
    const/4 v0, 0x0

    .line 245
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 246
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 249
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 250
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 253
    :cond_1
    return v0
.end method

.method public static greylist-max-r hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .line 444
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 445
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 446
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 448
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
    .param p0, "s"    # Ljava/lang/String;

    .line 466
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 468
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 470
    .local v0, "sz":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 472
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 473
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 474
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 472
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 477
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static blacklist intToBytes(I[BIZ)I
    .locals 5
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "signed"    # Z

    .line 869
    invoke-static {p0, p3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    .line 870
    .local v0, "l":I
    if-ltz p2, :cond_1

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 873
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    move v2, p0

    .local v2, "v":I
    :goto_0
    if-ltz v1, :cond_0

    .line 874
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    .line 875
    .local v3, "b":B
    add-int v4, p2, v1

    aput-byte v3, p1, v4

    .line 873
    .end local v3    # "b":B
    add-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 877
    .end local v1    # "i":I
    .end local v2    # "v":I
    :cond_0
    return v0

    .line 871
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
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 1336
    const/4 v0, 0x0

    .line 1337
    .local v0, "All_FF":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xf

    if-ge v1, p1, :cond_1

    .line 1338
    aget-byte v3, p0, v1

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    .line 1339
    const/4 v0, 0x1

    .line 1337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1341
    :cond_0
    const/4 v0, 0x0

    .line 1345
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1346
    const/16 v1, 0xff

    return v1

    .line 1348
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_5

    .line 1351
    aget-byte v4, p0, v3

    and-int/2addr v4, v2

    .line 1352
    .local v4, "a":I
    aget-byte v5, p0, v3

    shr-int/lit8 v5, v5, 0x4

    and-int/2addr v5, v2

    .line 1353
    .local v5, "b":I
    const/16 v6, 0x9

    if-gt v4, v6, :cond_4

    if-le v5, v6, :cond_3

    add-int/lit8 v6, p1, -0x1

    if-eq v3, v6, :cond_3

    goto :goto_2

    .line 1348
    .end local v4    # "a":I
    .end local v5    # "b":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1354
    .restart local v4    # "a":I
    .restart local v5    # "b":I
    :cond_4
    :goto_2
    return v1

    .line 1358
    .end local v3    # "i":I
    .end local v4    # "a":I
    .end local v5    # "b":I
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist mapTo2OrderBitColor([BII[II)[I
    .locals 9
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 641
    const/16 v0, 0x8

    rem-int v1, v0, p4

    if-eqz v1, :cond_0

    .line 642
    const-string v0, "IccUtils"

    const-string/jumbo v1, "not event number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 647
    :cond_0
    const/4 v1, 0x1

    .line 648
    .local v1, "mask":I
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 659
    :sswitch_0
    const/16 v1, 0xff

    goto :goto_0

    .line 656
    :sswitch_1
    const/16 v1, 0xf

    .line 657
    goto :goto_0

    .line 653
    :sswitch_2
    const/4 v1, 0x3

    .line 654
    goto :goto_0

    .line 650
    :sswitch_3
    const/4 v1, 0x1

    .line 651
    nop

    .line 663
    :goto_0
    new-array v2, p2, [I

    .line 664
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    .line 665
    .local v3, "resultIndex":I
    div-int/2addr v0, p4

    .line 666
    .local v0, "run":I
    :goto_1
    if-ge v3, p2, :cond_2

    .line 667
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "valueIndex":I
    .local v4, "valueIndex":I
    aget-byte p1, p0, p1

    .line 668
    .local p1, "tempByte":B
    const/4 v5, 0x0

    .local v5, "runIndex":I
    :goto_2
    if-ge v5, v0, :cond_1

    .line 669
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 670
    .local v6, "offset":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "resultIndex":I
    .local v7, "resultIndex":I
    mul-int v8, v6, p4

    shr-int v8, p1, v8

    and-int/2addr v8, v1

    aget v8, p3, v8

    aput v8, v2, v3

    .line 668
    .end local v6    # "offset":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_2

    .line 673
    .end local v5    # "runIndex":I
    .end local v7    # "resultIndex":I
    .end local p1    # "tempByte":B
    .restart local v3    # "resultIndex":I
    :cond_1
    move p1, v4

    goto :goto_1

    .line 674
    .end local v4    # "valueIndex":I
    .local p1, "valueIndex":I
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
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 679
    const/16 v0, 0x8

    rem-int/2addr v0, p4

    if-nez v0, :cond_0

    .line 680
    const-string v0, "IccUtils"

    const-string/jumbo v1, "not odd number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 685
    :cond_0
    new-array v0, p2, [I

    .line 687
    .local v0, "resultArray":[I
    return-object v0
.end method

.method public static blacklist mccMncConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 1173
    const/4 v0, 0x0

    .line 1175
    .local v0, "MCC":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1177
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1178
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1179
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IccUtils"

    if-nez v2, :cond_0

    .line 1182
    const-string v2, "[MccMncConvert] MCC Value is invalid(\'fff\')!"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v2, 0x0

    return-object v2

    .line 1187
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ddd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1191
    :cond_1
    goto :goto_0

    .line 1189
    :catch_0
    move-exception v2

    .line 1190
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "mccMncConvert Exception:"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1194
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1196
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

    .line 1204
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1198
    :cond_3
    :goto_1
    const/16 v2, 0x136

    if-lt v0, v2, :cond_4

    const/16 v2, 0x13c

    if-gt v0, v2, :cond_4

    .line 1200
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
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

    .line 1209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist networkNameToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 521
    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    .line 525
    :cond_0
    aget-byte v0, p0, p1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 546
    const-string v0, ""

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 536
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    const-string/jumbo v3, "utf-16"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 538
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 539
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 540
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "IccUtils"

    const-string/jumbo v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    move-object v0, v1

    goto :goto_0

    .line 529
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_1
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7

    .line 530
    .local v0, "unusedBits":I
    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    .line 531
    .local v1, "countSeptets":I
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "ret":Ljava/lang/String;
    move-object v0, v2

    .line 554
    .end local v1    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    aget-byte v1, p0, p1

    .line 558
    return-object v0

    .line 522
    .end local v0    # "ret":Ljava/lang/String;
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
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "valueIndex":I
    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 571
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 572
    .local v1, "height":I
    mul-int v3, v0, v1

    .line 574
    .local v3, "numOfPixels":I
    new-array v4, v3, [I

    .line 576
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .line 577
    .local v5, "pixelIndex":I
    const/4 v6, 0x7

    .line 578
    .local v6, "bitIndex":I
    const/4 v7, 0x0

    .line 579
    .local v7, "currentByte":B
    :goto_0
    if-ge v5, v3, :cond_1

    .line 581
    rem-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_0

    .line 582
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v8, "valueIndex":I
    aget-byte v2, p0, v2

    .line 583
    .end local v7    # "currentByte":B
    .local v2, "currentByte":B
    const/4 v6, 0x7

    move v7, v2

    move v2, v8

    .line 585
    .end local v8    # "valueIndex":I
    .local v2, "valueIndex":I
    .restart local v7    # "currentByte":B
    :cond_0
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pixelIndex":I
    .local v8, "pixelIndex":I
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "bitIndex":I
    .local v9, "bitIndex":I
    shr-int v6, v7, v6

    and-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v6

    aput v6, v4, v5

    move v5, v8

    move v6, v9

    goto :goto_0

    .line 588
    .end local v8    # "pixelIndex":I
    .end local v9    # "bitIndex":I
    .restart local v5    # "pixelIndex":I
    .restart local v6    # "bitIndex":I
    :cond_1
    if-eq v5, v3, :cond_2

    .line 589
    const-string v8, "IccUtils"

    const-string/jumbo v9, "parse end and size error"

    invoke-static {v8, v9}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static greylist parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "valueIndex":I
    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 615
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 616
    .local v1, "height":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v3, "valueIndex":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 617
    .local v2, "bits":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 618
    .local v3, "colorNumber":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 621
    .local v4, "clutOffset":I
    invoke-static {p0, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v5

    .line 622
    .local v5, "colorIndexArray":[I
    const/4 v8, 0x1

    if-ne v8, p2, :cond_0

    .line 623
    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    .line 626
    :cond_0
    const/4 v8, 0x0

    .line 627
    .local v8, "resultArray":[I
    rem-int/2addr v6, v2

    if-nez v6, :cond_1

    .line 628
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v6

    .end local v8    # "resultArray":[I
    .local v6, "resultArray":[I
    goto :goto_0

    .line 631
    .end local v6    # "resultArray":[I
    .restart local v8    # "resultArray":[I
    :cond_1
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v6

    .line 635
    .end local v8    # "resultArray":[I
    .restart local v6    # "resultArray":[I
    :goto_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static blacklist setUiccProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1430
    const-string v0, ""

    .line 1431
    .local v0, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1432
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1434
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1435
    const-string p2, ""

    .line 1437
    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1438
    const-string v3, ","

    if-eqz v2, :cond_1

    .line 1439
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1442
    :cond_1
    const-string v4, "IccUtils"

    if-ltz p0, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v5

    if-lt p0, v5, :cond_2

    goto/16 :goto_3

    .line 1447
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p0, :cond_4

    .line 1448
    const-string v6, ""

    .line 1449
    .local v6, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v7, v1

    if-ge v5, v7, :cond_3

    .line 1450
    aget-object v6, v1, v5

    .line 1452
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

    .line 1447
    .end local v6    # "str":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1455
    .end local v5    # "i":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1456
    if-eqz v1, :cond_5

    .line 1457
    add-int/lit8 v5, p0, 0x1

    .restart local v5    # "i":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_5

    .line 1458
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

    .line 1457
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1462
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1464
    .local v3, "propValLen":I
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 1467
    goto :goto_2

    .line 1465
    :catch_0
    move-exception v5

    .line 1466
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "setUiccProperty: utf-8 not supported"

    invoke-static {v4, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const/16 v5, 0x5b

    if-le v3, v5, :cond_6

    .line 1469
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

    .line 1470
    return-void

    .line 1473
    :cond_6
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    return-void

    .line 1443
    .end local v3    # "propValLen":I
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

    .line 1444
    return-void
.end method

.method public static blacklist setupCallbcdToString([BII)Ljava/lang/String;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1046
    .local v0, "ret":Ljava/lang/StringBuilder;
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 1047
    .local v1, "ton":I
    const/16 v2, 0x91

    if-ne v1, v2, :cond_0

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_9

    .line 1052
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 1053
    .local v3, "v":I
    const/16 v4, 0x2c

    const/16 v5, 0x9

    const/16 v6, 0x23

    const/16 v7, 0xc

    const/16 v8, 0x2a

    const/16 v9, 0xb

    const/16 v10, 0xa

    if-ne v3, v10, :cond_1

    .line 1054
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1055
    :cond_1
    if-ne v3, v9, :cond_2

    .line 1056
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1057
    :cond_2
    if-ne v3, v7, :cond_3

    .line 1058
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1060
    :cond_3
    if-le v3, v5, :cond_4

    goto :goto_3

    .line 1061
    :cond_4
    add-int/lit8 v11, v3, 0x30

    int-to-char v11, v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1064
    :goto_1
    aget-byte v11, p0, v2

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v3, v11, 0xf

    .line 1065
    if-ne v3, v10, :cond_5

    .line 1066
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1067
    :cond_5
    if-ne v3, v9, :cond_6

    .line 1068
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1069
    :cond_6
    if-ne v3, v7, :cond_7

    .line 1070
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1072
    :cond_7
    if-le v3, v5, :cond_8

    goto :goto_3

    .line 1073
    :cond_8
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    .end local v3    # "v":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1076
    .end local v2    # "i":I
    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist setupMDNbcdToString([BII)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1297
    .local v0, "ret":Ljava/lang/StringBuilder;
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_8

    .line 1300
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 1301
    .local v2, "v":I
    const/16 v3, 0x23

    const/16 v4, 0x9

    const/16 v5, 0x2a

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x30

    if-ne v2, v8, :cond_0

    .line 1302
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1303
    :cond_0
    if-ne v2, v7, :cond_1

    .line 1304
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1305
    :cond_1
    if-ne v2, v6, :cond_2

    .line 1306
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1308
    :cond_2
    if-le v2, v4, :cond_3

    goto :goto_3

    .line 1309
    :cond_3
    add-int/lit8 v10, v2, 0x30

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1312
    :goto_1
    aget-byte v10, p0, v1

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v2, v10, 0xf

    .line 1313
    if-ne v2, v8, :cond_4

    .line 1314
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1315
    :cond_4
    if-ne v2, v7, :cond_5

    .line 1316
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1317
    :cond_5
    if-ne v2, v6, :cond_6

    .line 1318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1320
    :cond_6
    if-le v2, v4, :cond_7

    goto :goto_3

    .line 1321
    :cond_7
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    .end local v2    # "v":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1326
    .end local v1    # "i":I
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_9

    .line 1327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1329
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist signedIntToBytes(I[BI)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 843
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist signedIntToBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 811
    if-ltz p0, :cond_0

    .line 814
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForSignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 815
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I[BI)I

    .line 816
    return-object v0

    .line 812
    .end local v0    # "bytes":[B
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
    .param p0, "alphaTag"    # Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 294
    .local v1, "septets":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 295
    new-array v2, v1, [B

    .line 296
    .local v2, "ret":[B
    array-length v3, v2

    invoke-static {p0, v2, v0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 297
    return-object v2

    .line 305
    .end local v2    # "ret":[B
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 306
    .local v2, "alphaTagBytes":[B
    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 308
    .local v3, "ret":[B
    const/16 v5, -0x80

    aput-byte v5, v3, v0

    .line 309
    array-length v5, v2

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    return-object v3
.end method

.method public static blacklist stringToBcdPlmn(Ljava/lang/String;[BI)V
    .locals 5
    .param p0, "plmn"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    .line 175
    .local v0, "digit6":C
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

    .line 176
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

    .line 177
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

    .line 178
    return-void
.end method

.method public static blacklist stringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 1026
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1028
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1030
    .local v0, "sz":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 1032
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1033
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 1034
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1032
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1037
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static blacklist stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 941
    const-string v0, "FFFFFFFFFFFFFFFFFFFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    return-object p0

    .line 944
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
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 1394
    const-string v0, "FFFFFFFFFFFFFFFFFFFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    return-object p0

    .line 1397
    :cond_0
    if-nez p0, :cond_1

    .line 1398
    const/4 v0, 0x0

    return-object v0

    .line 1400
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1401
    .local v0, "data":[B
    const-string/jumbo v1, "ro.csc.countryiso_code"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    .local v1, "countryISO":Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    array-length v3, v0

    .line 1403
    invoke-static {v0, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 1406
    :cond_2
    const-string v3, "(?i)f*$"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1404
    :cond_3
    :goto_0
    return-object p0
.end method

.method private static blacklist unsigned32(B)J
    .locals 4
    .param p0, "n"    # B

    .line 1215
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist unsignedIntToBytes(I[BI)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 830
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist unsignedIntToBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 794
    if-ltz p0, :cond_0

    .line 797
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 798
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    .line 799
    return-object v0

    .line 795
    .end local v0    # "bytes":[B
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
