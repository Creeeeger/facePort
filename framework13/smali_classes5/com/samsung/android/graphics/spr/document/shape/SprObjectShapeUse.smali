.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeUse.java"


# instance fields
.field public blacklist link:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 17
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    .line 18
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

    .line 21
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 8
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "alpha"    # F

    .line 56
    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 58
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->alpha:F

    mul-float/2addr v0, p5

    .line 60
    .local v0, "curAlpha":F
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    .line 64
    :cond_0
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v7

    .line 65
    .local v7, "link":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    if-eqz v7, :cond_1

    .line 66
    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 70
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

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    .line 29
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 30
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getTotalElementCount()I
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTotalSegmentCount()I
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .locals 8
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "strokePaint"    # Landroid/graphics/Paint;
    .param p3, "fillPaint"    # Landroid/graphics/Paint;
    .param p4, "isVisibleStroke"    # Z
    .param p5, "isVisibleFill"    # Z
    .param p6, "shadow"    # Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 75
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    .line 76
    .local v0, "link":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    if-eqz v0, :cond_0

    .line 77
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    .line 79
    :cond_0
    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 37
    return-void
.end method
