.class public final Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final coefficients:[I

.field public final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const/4 v1, 0x0

    aget v2, p2, v1

    if-nez v2, :cond_2

    :goto_0
    if-ge v0, p1, :cond_0

    aget v2, p2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    filled-new-array {v1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v0

    new-array v2, p1, [I

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    invoke-static {p2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 7

    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, p0

    iget-object p1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, p1

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_0
    array-length v0, p0

    new-array v0, v0, [I

    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_3

    sub-int v4, v3, v2

    aget v4, p1, v4

    aget v5, p0, v3

    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final evaluateAt(I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    array-length p1, p0

    move v2, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v3, p0, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    aget v0, p0, v0

    array-length v3, p0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {v1, p1, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v0

    aget v4, p0, v2

    invoke-virtual {v1, v0, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public final getCoefficient(I)I
    .locals 1

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    aget p0, p0, v0

    return p0
.end method

.method public final getDegree()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final isZero()Z
    .locals 1

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-nez p1, :cond_0

    iget-object p0, v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v1, p0

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p0, v3

    invoke-virtual {v0, v4, p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p0
.end method

.method public final multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 11

    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, p0

    iget-object p1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, p1

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    aget v6, p0, v5

    move v7, v4

    :goto_1
    if-ge v7, v2, :cond_1

    add-int v8, v5, v7

    aget v9, v3, v8

    aget v10, p1, v7

    invoke-virtual {v1, v6, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    invoke-virtual {v1, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p0

    :cond_3
    :goto_2
    iget-object p0, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 6

    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rsub-int v4, v5, 0x3a1

    rem-int/lit16 v4, v4, 0x3a1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {p1, v4, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v2

    if-eqz v2, :cond_5

    if-gez v2, :cond_0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v2, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v2, v3, :cond_3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v1, :cond_5

    if-ne v1, v3, :cond_4

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "x^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
