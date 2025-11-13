.class public final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/common/ECIInput;


# instance fields
.field public input:Ljava/lang/String;


# virtual methods
.method public final charAt(I)C
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final getECIValue(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final isECI(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    return-object p0
.end method
