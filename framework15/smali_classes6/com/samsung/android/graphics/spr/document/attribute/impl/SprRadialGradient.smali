.class public Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;
.super Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;
.source "SprRadialGradient.java"


# instance fields
.field public blacklist cx:F

.field public blacklist cy:F

.field public blacklist r:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cx:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cy:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->r:F

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->r:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public blacklist updateGradient()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->colors:[I

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    array-length v6, v6

    if-eq v0, v6, :cond_4

    new-array v1, v0, [I

    new-array v5, v0, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->colors:[I

    aget v7, v7, v3

    aput v7, v1, v3

    aput v4, v5, v3

    add-int/lit8 v6, v6, 0x1

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->colors:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->colors:[I

    aget v4, v4, v3

    aput v4, v1, v6

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    aget v4, v4, v3

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    iget-object v7, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v4, v4, v7

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_4

    add-int/lit8 v4, v0, -0x1

    iget-object v7, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->colors:[I

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->positions:[F

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    aput v7, v1, v4

    add-int/lit8 v4, v0, -0x1

    aput v2, v5, v4

    :cond_4
    new-instance v2, Landroid/graphics/RadialGradient;

    iget v8, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cx:F

    iget v9, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cy:F

    iget v10, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->r:F

    sget-object v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->sTileModeArray:[Landroid/graphics/Shader$TileMode;

    iget-byte v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->spreadMode:B

    aget-object v13, v3, v4

    move-object v7, v2

    move-object v11, v1

    move-object v12, v5

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->shader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->matrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->shader:Landroid/graphics/Shader;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return-void
.end method
