.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EMPTY_BYTE_ARRAY:[B

.field private static final greylist-max-o FLAG_CF:B = 0x20t

.field private static final greylist-max-o FLAG_IL:B = 0x8t

.field private static final greylist-max-o FLAG_MB:B = -0x80t

.field private static final greylist-max-o FLAG_ME:B = 0x40t

.field private static final greylist-max-o FLAG_SR:B = 0x10t

.field private static final greylist-max-o MAX_PAYLOAD_SIZE:I = 0xa00000

.field public static final whitelist RTD_ALTERNATIVE_CARRIER:[B

.field public static final greylist-max-o RTD_ANDROID_APP:[B

.field public static final whitelist RTD_HANDOVER_CARRIER:[B

.field public static final whitelist RTD_HANDOVER_REQUEST:[B

.field public static final whitelist RTD_HANDOVER_SELECT:[B

.field public static final whitelist RTD_SMART_POSTER:[B

.field public static final whitelist RTD_TEXT:[B

.field public static final whitelist RTD_URI:[B

.field public static final whitelist TNF_ABSOLUTE_URI:S = 0x3s

.field public static final whitelist TNF_EMPTY:S = 0x0s

.field public static final whitelist TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final whitelist TNF_MIME_MEDIA:S = 0x2s

.field public static final greylist-max-o TNF_RESERVED:S = 0x7s

.field public static final whitelist TNF_UNCHANGED:S = 0x6s

.field public static final whitelist TNF_UNKNOWN:S = 0x5s

.field public static final whitelist TNF_WELL_KNOWN:S = 0x1s

.field private static final greylist-max-o URI_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private final greylist-max-r mId:[B

.field private final greylist-max-o mPayload:[B

.field private final greylist-max-o mTnf:S

.field private final greylist-max-o mType:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 40

    .line 178
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x54

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    .line 184
    new-array v0, v0, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 190
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    .line 196
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    .line 202
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    .line 208
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    .line 214
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    .line 228
    const-string v0, "android.com:pkg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    .line 241
    const-string v4, ""

    const-string v5, "http://www."

    const-string v6, "https://www."

    const-string v7, "http://"

    const-string v8, "https://"

    const-string/jumbo v9, "tel:"

    const-string v10, "mailto:"

    const-string v11, "ftp://anonymous:anonymous@"

    const-string v12, "ftp://ftp."

    const-string v13, "ftps://"

    const-string/jumbo v14, "sftp://"

    const-string/jumbo v15, "smb://"

    const-string v16, "nfs://"

    const-string v17, "ftp://"

    const-string v18, "dav://"

    const-string v19, "news:"

    const-string/jumbo v20, "telnet://"

    const-string v21, "imap:"

    const-string v22, "rtsp://"

    const-string/jumbo v23, "urn:"

    const-string v24, "pop:"

    const-string/jumbo v25, "sip:"

    const-string/jumbo v26, "sips:"

    const-string/jumbo v27, "tftp:"

    const-string v28, "btspp://"

    const-string v29, "btl2cap://"

    const-string v30, "btgoep://"

    const-string/jumbo v31, "tcpobex://"

    const-string v32, "irdaobex://"

    const-string v33, "file://"

    const-string/jumbo v34, "urn:epc:id:"

    const-string/jumbo v35, "urn:epc:tag:"

    const-string/jumbo v36, "urn:epc:pat:"

    const-string/jumbo v37, "urn:epc:raw:"

    const-string/jumbo v38, "urn:epc:"

    const-string/jumbo v39, "urn:nfc:"

    filled-new-array/range {v4 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    .line 282
    new-array v0, v3, [B

    sput-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 998
    new-instance v0, Landroid/nfc/NdefRecord$1;

    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x63t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x48t
        0x63t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x48t
        0x72t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor whitelist <init>(S[B[B[B)V
    .locals 2
    .param p1, "tnf"    # S
    .param p2, "type"    # [B
    .param p3, "id"    # [B
    .param p4, "payload"    # [B

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    if-nez p2, :cond_0

    sget-object p2, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 564
    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 565
    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 567
    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 572
    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 573
    iput-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 574
    iput-object p3, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 575
    iput-object p4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 576
    return-void

    .line 569
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor whitelist <init>([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 596
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 598
    .local v1, "rs":[Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_0

    .line 602
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-short v3, v3, Landroid/nfc/NdefRecord;->mTnf:S

    iput-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 603
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 604
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 605
    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mPayload:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 606
    return-void

    .line 599
    :cond_0
    new-instance v2, Landroid/nfc/FormatException;

    const-string v3, "data too long"

    invoke-direct {v2, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o bytesToString([B)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "bs"    # [B

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    .local v0, "s":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 1076
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1078
    :cond_0
    return-object v0
.end method

.method public static whitelist createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 317
    if-eqz p0, :cond_1

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x4

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 321
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 320
    return-object v0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 6
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 463
    if-eqz p0, :cond_3

    .line 464
    if-eqz p1, :cond_2

    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 473
    .local v0, "byteDomain":[B
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 474
    .local v1, "byteType":[B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 475
    .local v2, "b":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    array-length v3, v0

    const/16 v5, 0x3a

    aput-byte v5, v2, v3

    .line 477
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    new-instance v3, Landroid/nfc/NdefRecord;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v3

    .line 470
    .end local v0    # "byteDomain":[B
    .end local v1    # "byteType":[B
    .end local v2    # "b":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domain is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "type is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "mimeData"    # [B

    .line 417
    if-eqz p0, :cond_3

    .line 422
    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 423
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 425
    .local v0, "slashIndex":I
    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 432
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 433
    .local v1, "typeBytes":[B
    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2

    .line 427
    .end local v1    # "typeBytes":[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mimeType must have minor type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mimeType must have major type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    .end local v0    # "slashIndex":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mimeType is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 9
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 496
    if-eqz p1, :cond_2

    .line 498
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 500
    .local v0, "textBytes":[B
    const/4 v1, 0x0

    .line 501
    .local v1, "languageCodeBytes":[B
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_0

    .line 504
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 505
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 508
    :goto_0
    array-length v2, v1

    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 511
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    array-length v4, v0

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 513
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    array-length v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 514
    .local v4, "status":B
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 515
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 516
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 518
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5

    .line 509
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "status":B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "language code is too long, must be <64 bytes."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    .end local v0    # "textBytes":[B
    .end local v1    # "languageCodeBytes":[B
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .line 346
    if-eqz p0, :cond_3

    .line 348
    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    .line 349
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "uriString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "prefix":B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 354
    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    int-to-byte v1, v2

    .line 356
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    goto :goto_1

    .line 353
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v2    # "i":I
    :cond_1
    :goto_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 361
    .local v2, "uriBytes":[B
    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 362
    .local v3, "recordBytes":[B
    const/4 v5, 0x0

    aput-byte v1, v3, v5

    .line 363
    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v7, 0x0

    invoke-direct {v5, v4, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5

    .line 350
    .end local v1    # "prefix":B
    .end local v2    # "uriBytes":[B
    .end local v3    # "recordBytes":[B
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "uri is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    .end local v0    # "uriString":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .line 389
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o ensureSanePayloadSize(J)V
    .locals 3
    .param p0, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 896
    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 900
    return-void

    .line 897
    :cond_0
    new-instance v0, Landroid/nfc/FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload above max limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0xa00000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;
    .locals 26
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "ignoreMbMe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 790
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 793
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    const/4 v0, 0x0

    .line 794
    .local v0, "type":[B
    const/4 v3, 0x0

    .line 795
    .local v3, "id":[B
    const/4 v4, 0x0

    .line 796
    .local v4, "payload":[B
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v5, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x0

    .line 798
    .local v6, "inChunk":Z
    const/4 v7, -0x1

    .line 799
    .local v7, "chunkTnf":S
    const/4 v8, 0x0

    .line 801
    .local v8, "me":Z
    :goto_0
    if-nez v8, :cond_25

    .line 802
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 804
    .local v9, "flag":B
    and-int/lit8 v10, v9, -0x80

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    move v10, v11

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 805
    .local v10, "mb":Z
    :goto_1
    and-int/lit8 v13, v9, 0x40

    if-eqz v13, :cond_1

    move v13, v11

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    move v8, v13

    .line 806
    and-int/lit8 v13, v9, 0x20

    if-eqz v13, :cond_2

    move v13, v11

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    .line 807
    .local v13, "cf":Z
    :goto_3
    and-int/lit8 v14, v9, 0x10

    if-eqz v14, :cond_3

    move v14, v11

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    .line 808
    .local v14, "sr":Z
    :goto_4
    and-int/lit8 v15, v9, 0x8

    if-eqz v15, :cond_4

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    .line 809
    .local v11, "il":Z
    :goto_5
    and-int/lit8 v15, v9, 0x7

    int-to-short v15, v15

    .line 811
    .local v15, "tnf":S
    if-nez v10, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_6

    if-nez v6, :cond_6

    if-eqz p1, :cond_5

    move-object/from16 v16, v0

    goto :goto_6

    .line 812
    :cond_5
    new-instance v12, Landroid/nfc/FormatException;

    move-object/from16 v16, v0

    .end local v0    # "type":[B
    .local v16, "type":[B
    const-string v0, "expected MB flag"

    invoke-direct {v12, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v12

    .line 811
    .end local v16    # "type":[B
    .restart local v0    # "type":[B
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_6
    move-object/from16 v16, v0

    .line 813
    .end local v0    # "type":[B
    .restart local v16    # "type":[B
    :goto_6
    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    if-eqz v6, :cond_9

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_7

    .line 814
    :cond_8
    new-instance v0, Landroid/nfc/FormatException;

    const-string/jumbo v12, "unexpected MB flag"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v0

    .line 815
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_9
    :goto_7
    if-eqz v6, :cond_b

    if-nez v11, :cond_a

    goto :goto_8

    .line 816
    :cond_a
    new-instance v0, Landroid/nfc/FormatException;

    const-string/jumbo v12, "unexpected IL flag in non-leading chunk"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v0

    .line 817
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_b
    :goto_8
    if-eqz v13, :cond_d

    if-nez v8, :cond_c

    goto :goto_9

    .line 818
    :cond_c
    new-instance v0, Landroid/nfc/FormatException;

    const-string/jumbo v12, "unexpected ME flag in non-trailing chunk"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v0

    .line 819
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_d
    :goto_9
    const/4 v0, 0x6

    if-eqz v6, :cond_f

    if-ne v15, v0, :cond_e

    goto :goto_a

    .line 820
    :cond_e
    new-instance v0, Landroid/nfc/FormatException;

    const-string v12, "expected TNF_UNCHANGED in non-leading chunk"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v0

    .line 821
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_f
    :goto_a
    if-nez v6, :cond_11

    if-eq v15, v0, :cond_10

    goto :goto_b

    .line 822
    :cond_10
    new-instance v0, Landroid/nfc/FormatException;

    const-string/jumbo v12, "unexpected TNF_UNCHANGED in first chunk or unchunked record"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v0

    .line 826
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_11
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 827
    .local v0, "typeLength":I
    if-eqz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "id":[B
    .end local v4    # "payload":[B
    .local v17, "id":[B
    .local v18, "payload":[B
    int-to-long v3, v12

    goto :goto_c

    .end local v17    # "id":[B
    .end local v18    # "payload":[B
    .restart local v3    # "id":[B
    .restart local v4    # "payload":[B
    :cond_12
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "id":[B
    .end local v4    # "payload":[B
    .restart local v17    # "id":[B
    .restart local v18    # "payload":[B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v19, 0xffffffffL

    and-long v3, v3, v19

    .line 828
    .local v3, "payloadLength":J
    :goto_c
    if-eqz v11, :cond_13

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    goto :goto_d

    :cond_13
    const/4 v12, 0x0

    .line 830
    .local v12, "idLength":I
    :goto_d
    if-eqz v6, :cond_15

    if-nez v0, :cond_14

    move/from16 v19, v7

    move/from16 v20, v8

    goto :goto_e

    .line 831
    :cond_14
    move/from16 v19, v7

    .end local v7    # "chunkTnf":S
    .local v19, "chunkTnf":S
    new-instance v7, Landroid/nfc/FormatException;

    move/from16 v20, v8

    .end local v8    # "me":Z
    .local v20, "me":Z
    const-string v8, "expected zero-length type in non-leading chunk"

    invoke-direct {v7, v8}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v7

    .line 830
    .end local v19    # "chunkTnf":S
    .end local v20    # "me":Z
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .restart local v7    # "chunkTnf":S
    .restart local v8    # "me":Z
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_15
    move/from16 v19, v7

    move/from16 v20, v8

    .line 834
    .end local v7    # "chunkTnf":S
    .end local v8    # "me":Z
    .restart local v19    # "chunkTnf":S
    .restart local v20    # "me":Z
    :goto_e
    if-nez v6, :cond_18

    .line 835
    if-lez v0, :cond_16

    new-array v7, v0, [B

    goto :goto_f

    :cond_16
    sget-object v7, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 836
    .end local v16    # "type":[B
    .local v7, "type":[B
    :goto_f
    if-lez v12, :cond_17

    new-array v8, v12, [B

    goto :goto_10

    :cond_17
    sget-object v8, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 837
    .end local v17    # "id":[B
    .local v8, "id":[B
    :goto_10
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 838
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_11

    .line 834
    .end local v7    # "type":[B
    .end local v8    # "id":[B
    .restart local v16    # "type":[B
    .restart local v17    # "id":[B
    :cond_18
    move-object/from16 v7, v16

    move-object/from16 v8, v17

    .line 841
    .end local v16    # "type":[B
    .end local v17    # "id":[B
    .restart local v7    # "type":[B
    .restart local v8    # "id":[B
    :goto_11
    invoke-static {v3, v4}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    .line 842
    const-wide/16 v21, 0x0

    cmp-long v16, v3, v21

    if-lez v16, :cond_19

    move/from16 v21, v9

    .end local v9    # "flag":B
    .local v21, "flag":B
    long-to-int v9, v3

    new-array v9, v9, [B

    goto :goto_12

    .end local v21    # "flag":B
    .restart local v9    # "flag":B
    :cond_19
    move/from16 v21, v9

    .end local v9    # "flag":B
    .restart local v21    # "flag":B
    sget-object v9, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 843
    .end local v18    # "payload":[B
    .local v9, "payload":[B
    :goto_12
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 845
    if-eqz v13, :cond_1c

    if-nez v6, :cond_1c

    .line 847
    if-nez v0, :cond_1b

    move/from16 v22, v0

    .end local v0    # "typeLength":I
    .local v22, "typeLength":I
    const/4 v0, 0x5

    if-ne v15, v0, :cond_1a

    goto :goto_13

    .line 848
    :cond_1a
    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "expected non-zero type length in first chunk"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v0

    .line 847
    .end local v22    # "typeLength":I
    .restart local v0    # "typeLength":I
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_1b
    move/from16 v22, v0

    .line 850
    .end local v0    # "typeLength":I
    .restart local v22    # "typeLength":I
    :goto_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 851
    move v0, v15

    .end local v19    # "chunkTnf":S
    .local v0, "chunkTnf":S
    goto :goto_14

    .line 845
    .end local v22    # "typeLength":I
    .local v0, "typeLength":I
    .restart local v19    # "chunkTnf":S
    :cond_1c
    move/from16 v22, v0

    .line 853
    .end local v0    # "typeLength":I
    .restart local v22    # "typeLength":I
    move/from16 v0, v19

    .end local v19    # "chunkTnf":S
    .local v0, "chunkTnf":S
    :goto_14
    if-nez v13, :cond_1d

    if-eqz v6, :cond_1e

    .line 855
    :cond_1d
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_1e
    if-nez v13, :cond_21

    if-eqz v6, :cond_21

    .line 859
    const-wide/16 v3, 0x0

    .line 860
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    move-object/from16 v17, v16

    .line 861
    .local v17, "p":[B
    move-object/from16 v16, v1

    move/from16 v23, v6

    move-object/from16 v1, v17

    .end local v6    # "inChunk":Z
    .end local v17    # "p":[B
    .local v1, "p":[B
    .local v23, "inChunk":Z
    array-length v6, v1

    move-object/from16 v17, v9

    move/from16 v24, v10

    .end local v9    # "payload":[B
    .end local v10    # "mb":Z
    .local v17, "payload":[B
    .local v24, "mb":Z
    int-to-long v9, v6

    add-long/2addr v3, v9

    .line 862
    .end local v1    # "p":[B
    move-object/from16 v1, v16

    move-object/from16 v9, v17

    move/from16 v6, v23

    move/from16 v10, v24

    goto :goto_15

    .line 863
    .end local v17    # "payload":[B
    .end local v23    # "inChunk":Z
    .end local v24    # "mb":Z
    .restart local v6    # "inChunk":Z
    .restart local v9    # "payload":[B
    .restart local v10    # "mb":Z
    :cond_1f
    move/from16 v23, v6

    move-object/from16 v17, v9

    move/from16 v24, v10

    .end local v6    # "inChunk":Z
    .end local v9    # "payload":[B
    .end local v10    # "mb":Z
    .restart local v17    # "payload":[B
    .restart local v23    # "inChunk":Z
    .restart local v24    # "mb":Z
    invoke-static {v3, v4}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    .line 864
    long-to-int v1, v3

    new-array v1, v1, [B

    .line 865
    .end local v17    # "payload":[B
    .local v1, "payload":[B
    const/4 v6, 0x0

    .line 866
    .local v6, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 867
    .local v10, "p":[B
    move-wide/from16 v18, v3

    .end local v3    # "payloadLength":J
    .local v18, "payloadLength":J
    array-length v3, v10

    const/4 v4, 0x0

    invoke-static {v10, v4, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    array-length v3, v10

    add-int/2addr v6, v3

    .line 869
    .end local v10    # "p":[B
    move-wide/from16 v3, v18

    goto :goto_16

    .line 870
    .end local v18    # "payloadLength":J
    .restart local v3    # "payloadLength":J
    :cond_20
    move-wide/from16 v18, v3

    .end local v3    # "payloadLength":J
    .restart local v18    # "payloadLength":J
    move v15, v0

    goto :goto_17

    .line 857
    .end local v1    # "payload":[B
    .end local v18    # "payloadLength":J
    .end local v23    # "inChunk":Z
    .end local v24    # "mb":Z
    .restart local v3    # "payloadLength":J
    .local v6, "inChunk":Z
    .restart local v9    # "payload":[B
    .local v10, "mb":Z
    :cond_21
    move/from16 v23, v6

    move-object/from16 v17, v9

    move/from16 v24, v10

    .line 872
    .end local v6    # "inChunk":Z
    .end local v9    # "payload":[B
    .end local v10    # "mb":Z
    .restart local v17    # "payload":[B
    .restart local v23    # "inChunk":Z
    .restart local v24    # "mb":Z
    move-object/from16 v1, v17

    .end local v17    # "payload":[B
    .restart local v1    # "payload":[B
    :goto_17
    if-eqz v13, :cond_22

    .line 874
    const/4 v6, 0x1

    .line 875
    .end local v23    # "inChunk":Z
    .restart local v6    # "inChunk":Z
    move-object v4, v1

    move-object v3, v8

    move/from16 v8, v20

    move-object/from16 v1, p0

    move-object/from16 v25, v7

    move v7, v0

    move-object/from16 v0, v25

    goto/16 :goto_0

    .line 877
    .end local v6    # "inChunk":Z
    .restart local v23    # "inChunk":Z
    :cond_22
    const/4 v6, 0x0

    .line 880
    .end local v23    # "inChunk":Z
    .restart local v6    # "inChunk":Z
    invoke-static {v15, v7, v8, v1}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v9

    .line 881
    .local v9, "error":Ljava/lang/String;
    if-nez v9, :cond_24

    .line 884
    new-instance v10, Landroid/nfc/NdefRecord;

    invoke-direct {v10, v15, v7, v8, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    if-eqz p1, :cond_23

    .line 886
    goto :goto_18

    .line 888
    .end local v3    # "payloadLength":J
    .end local v9    # "error":Ljava/lang/String;
    .end local v11    # "il":Z
    .end local v12    # "idLength":I
    .end local v13    # "cf":Z
    .end local v14    # "sr":Z
    .end local v15    # "tnf":S
    .end local v21    # "flag":B
    .end local v22    # "typeLength":I
    .end local v24    # "mb":Z
    :cond_23
    move-object v4, v1

    move-object v3, v8

    move/from16 v8, v20

    move-object/from16 v1, p0

    move-object/from16 v25, v7

    move v7, v0

    move-object/from16 v0, v25

    goto/16 :goto_0

    .line 882
    .restart local v3    # "payloadLength":J
    .restart local v9    # "error":Ljava/lang/String;
    .restart local v11    # "il":Z
    .restart local v12    # "idLength":I
    .restart local v13    # "cf":Z
    .restart local v14    # "sr":Z
    .restart local v15    # "tnf":S
    .restart local v21    # "flag":B
    .restart local v22    # "typeLength":I
    .restart local v24    # "mb":Z
    :cond_24
    new-instance v10, Landroid/nfc/FormatException;

    invoke-direct {v10, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "ignoreMbMe":Z
    throw v10
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .end local v1    # "payload":[B
    .end local v9    # "error":Ljava/lang/String;
    .end local v11    # "il":Z
    .end local v12    # "idLength":I
    .end local v13    # "cf":Z
    .end local v14    # "sr":Z
    .end local v15    # "tnf":S
    .end local v20    # "me":Z
    .end local v21    # "flag":B
    .end local v22    # "typeLength":I
    .end local v24    # "mb":Z
    .local v0, "type":[B
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    .local v3, "id":[B
    .restart local v4    # "payload":[B
    .local v7, "chunkTnf":S
    .local v8, "me":Z
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "ignoreMbMe":Z
    :cond_25
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v23, v6

    move/from16 v19, v7

    .line 891
    .end local v0    # "type":[B
    .end local v3    # "id":[B
    .end local v4    # "payload":[B
    .end local v5    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v6    # "inChunk":Z
    .end local v7    # "chunkTnf":S
    .end local v8    # "me":Z
    :goto_18
    nop

    .line 892
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/nfc/NdefRecord;

    return-object v0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    new-instance v1, Landroid/nfc/FormatException;

    const-string v3, "expected more data"

    invoke-direct {v1, v3, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o parseWktUri()Landroid/net/Uri;
    .locals 6

    .line 760
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 761
    return-object v2

    .line 766
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, -0x1

    .line 767
    .local v1, "prefixIndex":I
    if-ltz v1, :cond_2

    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v3

    if-lt v1, v4, :cond_1

    goto :goto_0

    .line 770
    :cond_1
    aget-object v2, v3, v1

    .line 771
    .local v2, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v3

    .line 773
    .local v0, "suffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 768
    .end local v0    # "suffix":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v2
.end method

.method private greylist-max-o toUri(Z)Landroid/net/Uri;
    .locals 7
    .param p1, "inSmartPoster"    # Z

    .line 723
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 747
    :pswitch_1
    if-eqz p1, :cond_0

    .line 748
    goto/16 :goto_2

    .line 750
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vnd.android.nfc://ext/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 743
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 744
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 725
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_3
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 728
    :try_start_0
    new-instance v0, Landroid/nfc/NdefMessage;

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([B)V

    .line 729
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 730
    .local v5, "nestedRecord":Landroid/nfc/NdefRecord;
    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 732
    return-object v6

    .line 729
    .end local v5    # "nestedRecord":Landroid/nfc/NdefRecord;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "nestedMessage":Landroid/nfc/NdefMessage;
    :cond_2
    goto :goto_1

    .line 735
    :catch_0
    move-exception v0

    :goto_1
    goto :goto_2

    .line 736
    :cond_3
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 737
    invoke-direct {p0}, Landroid/nfc/NdefRecord;->parseWktUri()Landroid/net/Uri;

    move-result-object v0

    .line 738
    .local v0, "wktUri":Landroid/net/Uri;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    :cond_4
    return-object v1

    .line 752
    .end local v0    # "wktUri":Landroid/net/Uri;
    :cond_5
    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static greylist-max-o validateTnf(S[B[B[B)Ljava/lang/String;
    .locals 3
    .param p0, "tnf"    # S
    .param p1, "type"    # [B
    .param p2, "id"    # [B
    .param p3, "payload"    # [B

    .line 915
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 935
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "unexpected tnf value: 0x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 933
    :pswitch_0
    const-string/jumbo v0, "unexpected TNF_UNCHANGED in first chunk or logical record"

    return-object v0

    .line 928
    :pswitch_1
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 929
    const-string/jumbo v0, "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record"

    return-object v0

    .line 931
    :cond_0
    return-object v0

    .line 925
    :pswitch_2
    return-object v0

    .line 917
    :pswitch_3
    array-length v1, p1

    if-nez v1, :cond_2

    array-length v1, p2

    if-nez v1, :cond_2

    array-length v1, p3

    if-eqz v1, :cond_1

    goto :goto_0

    .line 920
    :cond_1
    return-object v0

    .line 918
    :cond_2
    :goto_0
    const-string/jumbo v0, "unexpected data in TNF_EMPTY record"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 1068
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    const-wide v1, 0x10c00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 1069
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    const-wide v1, 0x10c00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 1070
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1071
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1038
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1039
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1040
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 1041
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/nfc/NdefRecord;

    .line 1042
    .local v1, "other":Landroid/nfc/NdefRecord;
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    iget-object v3, v1, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 1043
    :cond_3
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    iget-object v3, v1, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 1044
    :cond_4
    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iget-short v3, v1, Landroid/nfc/NdefRecord;->mTnf:S

    if-eq v2, v3, :cond_5

    return v0

    .line 1045
    :cond_5
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    iget-object v2, v1, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getByteLength()I
    .locals 6

    .line 971
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v2, v1

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v2

    add-int/2addr v0, v3

    .line 973
    .local v0, "length":I
    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x100

    if-ge v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 974
    .local v2, "sr":Z
    :goto_0
    iget-short v5, p0, Landroid/nfc/NdefRecord;->mTnf:S

    if-nez v5, :cond_1

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_1
    array-length v1, v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    move v1, v3

    .line 976
    .local v1, "il":Z
    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x3

    .line 977
    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 979
    :cond_4
    return v0
.end method

.method public whitelist getId()[B
    .locals 1

    .line 637
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getPayload()[B
    .locals 1

    .line 647
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getTnf()S
    .locals 1

    .line 614
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public whitelist getType()[B
    .locals 1

    .line 627
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 1023
    const/16 v0, 0x1f

    .line 1024
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1025
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 1026
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 1027
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    add-int/2addr v2, v3

    .line 1028
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 1029
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist toByteArray()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getByteLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 665
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    .line 666
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist toMimeType()Ljava/lang/String;
    .locals 3

    .line 685
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 692
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 693
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 687
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const-string/jumbo v0, "text/plain"

    return-object v0

    .line 695
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NdefRecord tnf=%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1052
    :cond_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_1
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, " payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1054
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist toUri()Landroid/net/Uri;
    .locals 1

    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "mb"    # Z
    .param p3, "me"    # Z

    .line 945
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 946
    .local v0, "sr":Z
    :goto_0
    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    if-nez v3, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v4, v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 948
    .local v1, "il":Z
    :goto_2
    if-eqz p2, :cond_3

    const/16 v4, -0x80

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    if-eqz p3, :cond_4

    const/16 v5, 0x40

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    or-int/2addr v4, v5

    .line 949
    if-eqz v0, :cond_5

    const/16 v5, 0x10

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    or-int/2addr v4, v5

    if-eqz v1, :cond_6

    const/16 v2, 0x8

    :cond_6
    or-int/2addr v2, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 950
    .local v2, "flags":B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 952
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 953
    if-eqz v0, :cond_7

    .line 954
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 956
    :cond_7
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 958
    :goto_6
    if-eqz v1, :cond_8

    .line 959
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 962
    :cond_8
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 963
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 964
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 965
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 989
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 992
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 994
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 996
    return-void
.end method
