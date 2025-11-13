.class public final Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# virtual methods
.method public final encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 5

    iget p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    iget-object v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, p0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p0

    const/4 p0, 0x1

    const/4 v1, 0x2

    if-lt v2, v1, :cond_2

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v3, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 p0, p0, -0x30

    add-int/2addr p0, v2

    add-int/lit16 p0, p0, 0x82

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iget p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not digits: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(IILjava/lang/CharSequence;)I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 p0, 0x3

    if-eq v0, p0, :cond_5

    const/4 p0, 0x4

    if-eq v0, p0, :cond_4

    const/4 p0, 0x5

    if-ne v0, p0, :cond_3

    const/16 v0, 0xe7

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal mode: "

    invoke-static {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 v0, 0xf0

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    goto :goto_1

    :cond_5
    const/16 v0, 0xee

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    goto :goto_1

    :cond_6
    const/16 p0, 0xef

    invoke-virtual {p1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    goto :goto_1

    :cond_7
    const/16 v0, 0xe6

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void

    :cond_8
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xeb

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    add-int/lit8 v2, v2, -0x7f

    int-to-char v0, v2

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_1

    :cond_9
    add-int/2addr v2, p0

    int-to-char v0, v2

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :goto_1
    return-void
.end method
