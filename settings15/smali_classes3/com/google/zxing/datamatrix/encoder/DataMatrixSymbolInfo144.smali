.class public final Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;
.super Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getDataLengthForInterleavedBlock(I)I
    .locals 0

    const/16 p0, 0x8

    if-gt p1, p0, :cond_0

    const/16 p0, 0x9c

    goto :goto_0

    :cond_0
    const/16 p0, 0x9b

    :goto_0
    return p0
.end method

.method public final getInterleavedBlockCount()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method
