.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeCircle.java"


# instance fields
.field public blacklist cr:F

.field public blacklist cx:F

.field public blacklist cy:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    .line 12
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    .line 13
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    .line 17
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    .line 12
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    .line 13
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 5
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "alpha"    # F

    .line 59
    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 61
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->alpha:F

    mul-float/2addr v0, p5

    .line 63
    .local v0, "curAlpha":F
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->setShadowLayer()V

    .line 68
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->isVisibleFill:Z

    if-eqz v1, :cond_1

    .line 69
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->isVisibleStroke:Z

    if-eqz v1, :cond_2

    .line 72
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->clearShadowLayer()V

    .line 76
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 77
    return-void
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    .line 30
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 31
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public blacklist getTotalElementCount()I
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTotalSegmentCount()I
    .locals 1

    .line 49
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 36
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 37
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 40
    return-void
.end method
