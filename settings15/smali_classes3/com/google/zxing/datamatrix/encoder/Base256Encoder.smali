.class public final Lcom/google/zxing/datamatrix/encoder/Base256Encoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# virtual methods
.method public final encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    iget-object v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v1, v4, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(IILjava/lang/CharSequence;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    iget-object v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    iget v5, v5, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    sub-int/2addr v5, v4

    if-lez v5, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    const/16 v4, 0xf9

    if-gt v1, v4, :cond_4

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x613

    if-gt v1, v5, :cond_8

    div-int/lit16 v5, v1, 0xfa

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {p0, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    rem-int/lit16 v1, v1, 0xfa

    int-to-char v1, v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x95

    const/16 v6, 0xff

    rem-int/2addr v5, v6

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    if-gt v5, v6, :cond_6

    :goto_3
    int-to-char v4, v5

    goto :goto_4

    :cond_6
    add-int/lit16 v5, v5, -0x100

    goto :goto_3

    :goto_4
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Message length not in valid ranges: "

    invoke-static {v1, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
