.class public Landroid/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mMat:[F


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    return-void
.end method

.method public constructor whitelist <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public whitelist get(II)F
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    return-object v0
.end method

.method public whitelist load(Landroid/renderscript/Matrix2f;)V
    .locals 4

    invoke-virtual {p1}, Landroid/renderscript/Matrix2f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public whitelist loadIdentity()V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    return-void
.end method

.method public whitelist loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v1, :cond_0

    invoke-virtual {p2, v0, v4}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v7

    invoke-virtual {p1, v4, v5}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v5

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    invoke-virtual {p1, v4, v6}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v5

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0, v5, v2}, Landroid/renderscript/Matrix2f;->set(IIF)V

    invoke-virtual {p0, v0, v6, v3}, Landroid/renderscript/Matrix2f;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist loadRotate(F)V
    .locals 5

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x2

    aput v1, v2, v3

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x3

    aput v0, v2, v3

    return-void
.end method

.method public whitelist loadScale(FF)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput p2, v0, v1

    return-void
.end method

.method public whitelist multiply(Landroid/renderscript/Matrix2f;)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix2f;->loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->load(Landroid/renderscript/Matrix2f;)V

    return-void
.end method

.method public whitelist rotate(F)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix2f;->loadRotate(F)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    return-void
.end method

.method public whitelist scale(FF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix2f;->loadScale(FF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    return-void
.end method

.method public whitelist set(IIF)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void
.end method

.method public whitelist transpose()V
    .locals 5

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v3, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v2, v1

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    aput v0, v1, v4

    return-void
.end method
