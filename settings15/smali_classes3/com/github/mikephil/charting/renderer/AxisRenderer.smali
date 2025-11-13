.class public abstract Lcom/github/mikephil/charting/renderer/AxisRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAxis:Lcom/github/mikephil/charting/components/AxisBase;

.field public final mAxisLabelPaint:Landroid/graphics/Paint;

.field public final mAxisLinePaint:Landroid/graphics/Paint;

.field public final mGridPaint:Landroid/graphics/Paint;

.field public final mLimitLinePaint:Landroid/graphics/Paint;

.field public final mTrans:Lcom/github/mikephil/charting/utils/Transformer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/AxisBase;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    const p3, -0x777778

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v1, 0x5a

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeAxis(FF)V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v2, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
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

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v2, v3}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    invoke-virtual {v1, p2, p1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    iget-wide p1, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p1, p1

    iget-wide v1, v4, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p2, v1

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxisValues(FF)V

    return-void
.end method

.method public computeAxisValues(FF)V
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    move-object v2, p0

    iget-object v2, v2, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mLabelCount:I

    sub-float v4, v1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    if-eqz v3, :cond_0

    const-wide/16 v7, 0x0

    cmpg-double v9, v4, v7

    if-lez v9, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_1
    int-to-double v9, v3

    div-double v9, v4, v9

    invoke-static {v9, v10}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v9

    float-to-double v9, v9

    iget-boolean v11, v2, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    if-eqz v11, :cond_2

    iget v11, v2, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    float-to-double v11, v11

    cmpg-double v13, v9, v11

    if-gez v13, :cond_2

    move-wide v9, v11

    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v11

    double-to-int v11, v11

    int-to-double v11, v11

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v11

    float-to-double v11, v11

    div-double v6, v9, v11

    double-to-int v6, v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_4

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/16 v13, 0x0

    cmpl-double v6, v6, v13

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    :cond_4
    :goto_0
    iget-boolean v6, v2, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    if-eqz v6, :cond_6

    double-to-float v1, v4

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v9, v1

    iput v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    iget-object v1, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v1, v1

    if-ge v1, v3, :cond_5

    new-array v1, v3, [F

    iput-object v1, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_10

    iget-object v4, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aput v0, v4, v1

    float-to-double v4, v0

    add-double/2addr v4, v9

    double-to-float v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const-wide/16 v3, 0x0

    cmpl-double v5, v9, v3

    if-nez v5, :cond_7

    const-wide/16 v13, 0x0

    goto :goto_2

    :cond_7
    float-to-double v3, v0

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    move-wide v13, v3

    :goto_2
    if-nez v5, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_8
    float-to-double v0, v1

    div-double/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v9

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, v0, v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    const-wide/16 v3, 0x0

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_a

    const-wide/16 v0, 0x1

    goto :goto_3

    :cond_a
    const-wide/16 v0, -0x1

    :goto_3
    add-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :goto_4
    if-eqz v5, :cond_b

    cmpl-double v3, v0, v13

    if-eqz v3, :cond_b

    move-wide v3, v13

    const/4 v5, 0x0

    :goto_5
    cmpg-double v6, v3, v0

    if-gtz v6, :cond_d

    add-int/lit8 v5, v5, 0x1

    add-double/2addr v3, v9

    goto :goto_5

    :cond_b
    cmpl-double v0, v0, v13

    if-nez v0, :cond_c

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :cond_d
    :goto_6
    iput v5, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    iget-object v0, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v0, v0

    if-ge v0, v5, :cond_e

    new-array v0, v5, [F

    iput-object v0, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    :cond_e
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v5, :cond_10

    const-wide/16 v3, 0x0

    cmpl-double v1, v13, v3

    if-nez v1, :cond_f

    move-wide v13, v3

    :cond_f
    iget-object v1, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    double-to-float v6, v13

    aput v6, v1, v0

    add-double/2addr v13, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v9, v0

    if-gez v0, :cond_11

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    iput v0, v2, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    :goto_8
    return-void

    :goto_9
    new-array v1, v0, [F

    iput-object v1, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    iput v0, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    return-void
.end method
