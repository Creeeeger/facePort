.class public final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cachedTotalSize:I

.field public final characterLength:I

.field public final charsetEncoderIndex:I

.field public final fromPosition:I

.field public final mode:Lcom/google/zxing/qrcode/decoder/Mode;

.field public final previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;


# direct methods
.method private constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    iput p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->fromPosition:I

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq p2, v0, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p4

    :goto_1
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    iput p5, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I

    iput-object p6, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    const/4 v2, 0x0

    if-eqz p6, :cond_2

    iget v3, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    const/4 v4, 0x1

    if-ne p2, v0, :cond_3

    if-nez p6, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-eqz p6, :cond_5

    iget v0, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    if-eq v1, v0, :cond_5

    :cond_4
    move v2, v4

    :cond_5
    const/4 v0, 0x4

    if-eqz p6, :cond_6

    iget-object p6, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne p2, p6, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {p2, p7}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p6

    add-int/2addr p6, v0

    add-int/2addr v3, p6

    :cond_7
    sget-object p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p6, p2

    if-eq p2, v4, :cond_e

    const/4 p6, 0x2

    if-eq p2, p6, :cond_c

    const/4 p7, 0x3

    if-eq p2, p7, :cond_9

    if-eq p2, v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object p2, p1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    add-int/2addr p5, p3

    iget-object p1, p1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {p1, p3, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, p2, p4

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v3, p1

    if-eqz v2, :cond_f

    add-int/lit8 v3, v3, 0xc

    goto :goto_5

    :cond_9
    if-ne p5, v4, :cond_a

    goto :goto_3

    :cond_a
    if-ne p5, p6, :cond_b

    const/4 v0, 0x7

    goto :goto_3

    :cond_b
    const/16 v0, 0xa

    :goto_3
    add-int/2addr v3, v0

    goto :goto_5

    :cond_c
    if-ne p5, v4, :cond_d

    const/4 p1, 0x6

    goto :goto_4

    :cond_d
    const/16 p1, 0xb

    :goto_4
    add-int/2addr v3, p1

    goto :goto_5

    :cond_e
    add-int/lit8 v3, v3, 0xd

    :cond_f
    :goto_5
    iput v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V

    return-void
.end method
