.class public final Lcom/github/mikephil/charting/utils/ViewPortHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

.field public mChartHeight:F

.field public mChartWidth:F

.field public final mContentRect:Landroid/graphics/RectF;

.field public final mMatrixTouch:Landroid/graphics/Matrix;

.field public mMaxScaleX:F

.field public mMaxScaleY:F

.field public mMinScaleX:F

.field public mMinScaleY:F

.field public mScaleX:F

.field public mScaleY:F

.field public mTransX:F

.field public final matrixBuffer:[F

.field public final valsBufferForFitScreen:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->valsBufferForFitScreen:[F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    return-void
.end method


# virtual methods
.method public final isInBoundsLeft(F)Z
    .locals 1

    iget-object p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInBoundsRight(F)Z
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInBoundsX(F)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInBoundsY(F)Z
    .locals 1

    iget-object p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 11

    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x5

    aget v6, v0, v5

    const/4 v7, 0x4

    aget v8, v0, v7

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v4, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v4

    move v8, p2

    :goto_0
    neg-float v8, v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    mul-float/2addr v9, v8

    sub-float/2addr v9, v4

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    iget v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    sub-float/2addr v2, v10

    mul-float/2addr v2, p2

    add-float/2addr v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v2, -0x80000000

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    aput v2, v0, v1

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    aput v1, v0, v3

    aput p2, v0, v5

    iget p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    aput p0, v0, v7

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public final refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method
