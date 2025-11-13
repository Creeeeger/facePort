.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/Reader;


# virtual methods
.method public final decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 9

    new-instance p0, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v1

    iget-object v2, v1, Lcom/google/zxing/aztec/AztecDetectorResult;->points:[Lcom/google/zxing/ResultPoint;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget v0, v1, Lcom/google/zxing/aztec/AztecDetectorResult;->errorsCorrected:I

    new-instance v3, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    move v2, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :goto_0
    move-object v2, p1

    goto :goto_2

    :goto_1
    move-object v2, p1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_0

    :goto_2
    move-object v3, v2

    move v2, v0

    move-object v0, v1

    move-object v1, p1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_1

    :goto_3
    move-object v3, v2

    move v2, v0

    move-object v0, p1

    :goto_4
    if-nez p1, :cond_0

    const/4 p1, 0x1

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object p0

    iget-object v3, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->points:[Lcom/google/zxing/ResultPoint;

    iget v2, p0, Lcom/google/zxing/aztec/AztecDetectorResult;->errorsCorrected:I

    new-instance p1, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/zxing/FormatException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    move-object v6, v3

    goto :goto_5

    :catch_4
    move-exception p0

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0

    :cond_2
    throw v1

    :goto_5
    if-eqz p2, :cond_3

    sget-object p0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_3
    new-instance p0, Lcom/google/zxing/Result;

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v5, p1, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    const/4 v8, 0x0

    iget-object v4, p1, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;I)V

    iget-object p2, p1, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    if-eqz p2, :cond_4

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_4
    iget-object p2, p1, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    if-eqz p2, :cond_5

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_5
    iget-object p2, p1, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v2

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "]z"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/google/zxing/common/DecoderResult;->symbologyModifier:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final reset()V
    .locals 0

    return-void
.end method
