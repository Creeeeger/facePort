.class public final Lcom/google/zxing/oned/UPCAReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final ean13Reader:Lcom/google/zxing/oned/EAN13Reader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/EAN13Reader;

    return-void
.end method

.method public static maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/google/zxing/Result;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    iget-object p0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/EAN13Reader;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method public final decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/EAN13Reader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result p0

    return p0
.end method

.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/EAN13Reader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method public final decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/EAN13Reader;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method public final getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 0

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method
