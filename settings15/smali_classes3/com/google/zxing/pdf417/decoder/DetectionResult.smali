.class public final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final barcodeColumnCount:I

.field public final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field public boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field public final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method public constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    iget p1, p1, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->columnCount:I

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-void
.end method


# virtual methods
.method public final adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 12

    if-eqz p1, :cond_e

    check-cast p1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {p1, v0, p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-boolean v3, p1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v3, :cond_2

    iget-object v4, v1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    :goto_1
    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    goto :goto_2

    :cond_3
    iget-object v1, v1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    :goto_2
    iget v3, v4, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v3

    iget v1, v1, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v4, -0x1

    move v6, v1

    move v5, v2

    :goto_3
    if-ge v3, p1, :cond_e

    aget-object v7, v0, v3

    if-nez v7, :cond_4

    goto :goto_9

    :cond_4
    iget v8, v7, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    sub-int v9, v8, v4

    if-nez v9, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_5
    if-ne v9, v1, :cond_6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v4, v7, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    :goto_4
    move v5, v1

    goto :goto_9

    :cond_6
    const/4 v10, 0x0

    if-ltz v9, :cond_d

    iget v11, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->rowCount:I

    if-ge v8, v11, :cond_d

    if-le v9, v3, :cond_7

    goto :goto_8

    :cond_7
    const/4 v8, 0x2

    if-le v6, v8, :cond_8

    add-int/lit8 v8, v6, -0x2

    mul-int/2addr v9, v8

    :cond_8
    if-lt v9, v3, :cond_9

    move v8, v1

    goto :goto_5

    :cond_9
    move v8, v2

    :goto_5
    move v11, v1

    :goto_6
    if-gt v11, v9, :cond_b

    if-nez v8, :cond_b

    sub-int v8, v3, v11

    aget-object v8, v0, v8

    if-eqz v8, :cond_a

    move v8, v1

    goto :goto_7

    :cond_a
    move v8, v2

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_b
    if-eqz v8, :cond_c

    aput-object v10, v0, v3

    goto :goto_9

    :cond_c
    iget v4, v7, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    goto :goto_4

    :cond_d
    :goto_8
    aput-object v10, v0, v3

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget p0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-nez v2, :cond_0

    add-int/lit8 v2, p0, 0x1

    aget-object v2, v0, v2

    :cond_0
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    move v4, v1

    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    const-string v5, "CW %3d:"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v1

    :goto_1
    add-int/lit8 v6, p0, 0x2

    if-ge v5, v6, :cond_3

    aget-object v6, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "    |   "

    if-nez v6, :cond_1

    :try_start_1
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v6, v6, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v6, v6, v4

    if-nez v6, :cond_2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_2
    const-string v7, " %3d|%3d"

    iget v8, v6, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v6, v6, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "%n"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    return-object p0

    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method
