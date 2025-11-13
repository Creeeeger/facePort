.class public Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/AxisRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mGridClippingRect:Landroid/graphics/RectF;

.field public final mLimitLineClippingRect:Landroid/graphics/RectF;

.field public final mLimitLinePath:Landroid/graphics/Path;

.field public final mLimitLineSegmentsBuffer:[F

.field public mRenderGridLinesBuffer:[F

.field public final mRenderGridLinesPath:Landroid/graphics/Path;

.field public final mRenderLimitLinesBuffer:[F

.field public final mXAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/AxisBase;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesPath:Landroid/graphics/Path;

    const/4 p1, 0x2

    new-array p3, p1, [F

    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesBuffer:[F

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderLimitLinesBuffer:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public final computeAxis(FF)V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v2, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object p1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v2, v3}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v4

    invoke-virtual {v1, p2, p1, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    iget-object p1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3, v2, v3}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    invoke-virtual {v1, p2, p1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    iget-wide p1, v4, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p1, p1

    iget-wide v1, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p2, v1

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxisValues(FF)V

    return-void
.end method

.method public final computeAxisValues(FF)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxisValues(FF)V

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/AxisBase;->getLongestLabel()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v0, p2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object p2

    iget v0, p2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v1, "Q"

    invoke-static {p0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v3

    sget-object v2, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    iput v4, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iput v1, v2, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    iget p0, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    iget p0, v2, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    sget-object p0, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    sget-object p0, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    return-void
.end method

.method public final drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 7

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mFontMetricsBuffer:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v4, 0x0

    sub-float v2, v4, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    add-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v6, p5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_0

    iget v6, p5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget p5, p5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float/2addr v1, p5

    sub-float/2addr v0, v1

    :cond_1
    add-float/2addr v2, p3

    add-float/2addr v0, p4

    invoke-virtual {p1, p2, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 13

    move-object v6, p0

    const/4 v7, 0x1

    iget-object v8, v6, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    mul-int/lit8 v9, v0, 0x2

    new-array v10, v9, [F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v9, :cond_0

    iget-object v2, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    move v11, v0

    :goto_1
    if-ge v11, v9, :cond_4

    aget v0, v10, v11

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v2

    iget-object v3, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v4, v11, 0x2

    aget v3, v3, v4

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v8, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    if-eqz v3, :cond_1

    iget v3, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    add-int/lit8 v5, v3, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_2

    if-le v3, v7, :cond_2

    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iget-object v1, v1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float v1, v4, v1

    mul-float/2addr v1, v12

    cmpl-float v1, v3, v1

    if-lez v1, :cond_1

    add-float v1, v0, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    div-float/2addr v3, v12

    sub-float/2addr v0, v3

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    if-nez v11, :cond_1

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    add-float/2addr v1, v0

    move v3, v1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_3
    add-int/lit8 v11, v11, 0x2

    goto :goto_1

    :cond_4
    return-void
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v1, v0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget v5, v4, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesBuffer:[F

    array-length v2, v2

    iget v4, v4, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    mul-int/lit8 v4, v4, 0x2

    if-eq v2, v4, :cond_1

    iget v2, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesBuffer:[F

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesBuffer:[F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    div-int/lit8 v7, v5, 0x2

    aget v8, v6, v7

    aput v8, v2, v5

    add-int/lit8 v8, v5, 0x1

    aget v6, v6, v7

    aput v6, v2, v8

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v5, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_3

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    iget-object v6, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_2
    return-void
.end method
