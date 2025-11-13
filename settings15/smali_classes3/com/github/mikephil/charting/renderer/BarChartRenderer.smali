.class public Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBarBorderPaint:Landroid/graphics/Paint;

.field public mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

.field public final mBarRect:Landroid/graphics/RectF;

.field public final mBarShadowRectBuffer:Landroid/graphics/RectF;

.field public mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

.field public final mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final drawData(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-boolean v3, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mVisible:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v3, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v2

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    iget v4, v1, Lcom/github/mikephil/charting/data/BarDataSet;->mBarBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v4, v4, p3

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    iput v5, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v6, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v6, v6, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v6, Lcom/github/mikephil/charting/data/BarData;

    iget v6, v6, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    iput v6, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarWidth:F

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/data/BarDataSet;)V

    iget-object v4, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    iget-object v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v7, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    if-eqz v6, :cond_1

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    move v2, v5

    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_5

    add-int/lit8 v7, v5, 0x2

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    aget v8, v4, v5

    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    aget v11, v4, v5

    add-int/lit8 v8, v5, 0x1

    aget v12, v4, v8

    aget v13, v4, v7

    add-int/lit8 v7, v5, 0x3

    aget v14, v4, v7

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public final drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 10

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-object v6, v0

    check-cast v6, Lcom/github/mikephil/charting/data/BarData;

    array-length v7, p2

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v9, p2, v8

    iget v0, v9, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighlightEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    iget v2, v9, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    iget v3, v9, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0, v1, v0}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v3, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    iget v0, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, v9, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    if-ltz v0, :cond_3

    iget-object v2, v1, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean v2, v2, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    if-eqz v2, :cond_2

    iget v0, v1, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    iget v2, v1, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    neg-float v2, v2

    :goto_1
    move v3, v2

    move v2, v0

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    aget-object v0, v2, v0

    iget v2, v0, Lcom/github/mikephil/charting/highlight/Range;->from:F

    iget v0, v0, Lcom/github/mikephil/charting/highlight/Range;->to:F

    move v3, v0

    goto :goto_2

    :cond_3
    iget v0, v1, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    iget v1, v1, Lcom/github/mikephil/charting/data/Entry;->x:F

    iget v0, v6, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v1, v9, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawX:F

    iput v0, v9, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawY:F

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    int-to-float v0, v0

    iget-object v2, v7, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v2, v2, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_20

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    iget-object v8, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    const/high16 v0, 0x40900000    # 4.5f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v9

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean v10, v0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    const/4 v12, 0x0

    :goto_0
    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    move-result v0

    if-ge v12, v0, :cond_20

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-boolean v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    if-nez v0, :cond_1

    iget-boolean v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawIcons:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v21, v10

    goto/16 :goto_18

    :cond_1
    :goto_1
    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mValuePaint:Landroid/graphics/Paint;

    iget v1, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v1, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v1, "8"

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    if-eqz v10, :cond_2

    neg-float v1, v9

    :goto_2
    move v14, v1

    goto :goto_3

    :cond_2
    add-float v1, v0, v9

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_3

    add-float/2addr v0, v9

    :goto_4
    move v15, v0

    goto :goto_5

    :cond_3
    neg-float v0, v9

    goto :goto_4

    :goto_5
    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v6, v0, v12

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    sget-object v1, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v1, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iput v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget v0, v13, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_4

    move v0, v4

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    iget-object v3, v7, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-nez v0, :cond_b

    const/4 v4, 0x0

    :goto_7
    int-to-float v0, v4

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    array-length v2, v1

    int-to-float v2, v2

    mul-float v2, v2, v17

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    aget v0, v1, v4

    add-int/lit8 v2, v4, 0x2

    aget v2, v1, v2

    add-float/2addr v0, v2

    div-float v2, v0, v16

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v9, v5

    goto/16 :goto_17

    :cond_6
    add-int/lit8 v0, v4, 0x1

    aget v11, v1, v0

    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    move/from16 v19, v4

    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v8, v3

    :goto_8
    move-object v9, v5

    move-object v10, v6

    goto :goto_b

    :cond_8
    div-int/lit8 v11, v4, 0x4

    invoke-virtual {v13, v11}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v19

    move/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    iget v2, v2, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    move-object/from16 v19, v3

    iget-boolean v3, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    if-eqz v3, :cond_a

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    move-result-object v3

    cmpl-float v21, v2, v18

    if-ltz v21, :cond_9

    aget v0, v1, v0

    add-float/2addr v0, v14

    :goto_9
    move/from16 v21, v0

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v4, 0x3

    aget v0, v1, v0

    add-float/2addr v0, v15

    goto :goto_9

    :goto_a
    invoke-virtual {v13, v11}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getValueTextColor(I)I

    move-result v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object v2, v3

    move-object/from16 v23, v8

    move-object/from16 v8, v19

    move/from16 v3, v22

    move/from16 v19, v4

    move/from16 v4, v20

    move/from16 v20, v9

    move-object v9, v5

    move/from16 v5, v21

    move/from16 v21, v10

    move-object v10, v6

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;FFFI)V

    goto :goto_b

    :cond_a
    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v8, v19

    move/from16 v19, v4

    goto :goto_8

    :goto_b
    add-int/lit8 v4, v19, 0x4

    move-object v3, v8

    move-object v5, v9

    move-object v6, v10

    move/from16 v9, v20

    move/from16 v10, v21

    move-object/from16 v8, v23

    goto/16 :goto_7

    :cond_b
    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v8, v3

    move-object v9, v5

    move-object v10, v6

    iget-object v0, v7, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v1, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_c
    int-to-float v0, v6

    iget-object v1, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v17

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f

    invoke-virtual {v13, v6}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v5, v0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    iget-object v1, v10, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v2, v1, v19

    add-int/lit8 v3, v19, 0x2

    aget v1, v1, v3

    add-float/2addr v2, v1

    div-float v3, v2, v16

    invoke-virtual {v13, v6}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getValueTextColor(I)I

    move-result v22

    if-nez v5, :cond_11

    invoke-virtual {v8, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_17

    :cond_c
    add-int/lit8 v1, v19, 0x1

    iget-object v2, v10, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v4, v2, v1

    invoke-virtual {v8, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v8, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    move/from16 v25, v6

    const/16 v24, 0x1

    goto :goto_e

    :cond_e
    iget-boolean v4, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    if-eqz v4, :cond_10

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    move-result-object v4

    iget v0, v0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    aget v1, v2, v1

    cmpl-float v2, v0, v18

    if-ltz v2, :cond_f

    move v2, v14

    goto :goto_d

    :cond_f
    move v2, v15

    :goto_d
    add-float v25, v1, v2

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move v4, v3

    move/from16 v3, v26

    const/16 v24, 0x1

    move-object v7, v5

    move/from16 v5, v25

    move/from16 v25, v6

    move/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;FFFI)V

    goto/16 :goto_15

    :cond_10
    move-object v7, v5

    move/from16 v25, v6

    const/16 v24, 0x1

    goto/16 :goto_15

    :goto_e
    move-object/from16 v7, p0

    move/from16 v4, v24

    move/from16 v6, v25

    goto/16 :goto_c

    :cond_11
    move/from16 v24, v4

    move-object v7, v5

    move/from16 v25, v6

    move v4, v3

    array-length v1, v7

    mul-int/lit8 v6, v1, 0x2

    new-array v5, v6, [F

    iget v0, v0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v27, v18

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_f
    if-ge v0, v6, :cond_15

    aget v2, v7, v1

    cmpl-float v3, v2, v18

    if-nez v3, :cond_13

    cmpl-float v28, v27, v18

    if-eqz v28, :cond_12

    cmpl-float v28, v26, v18

    if-nez v28, :cond_13

    :cond_12
    move/from16 v32, v26

    move/from16 v26, v2

    move/from16 v2, v32

    goto :goto_10

    :cond_13
    if-ltz v3, :cond_14

    add-float v27, v27, v2

    move/from16 v2, v26

    move/from16 v26, v27

    goto :goto_10

    :cond_14
    sub-float v2, v26, v2

    :goto_10
    add-int/lit8 v3, v0, 0x1

    mul-float v26, v26, v17

    aput v26, v5, v3

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    move/from16 v26, v2

    goto :goto_f

    :cond_15
    invoke-virtual {v11, v5}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v6, :cond_1d

    div-int/lit8 v0, v3, 0x2

    aget v1, v7, v0

    cmpl-float v2, v1, v18

    if-nez v2, :cond_16

    cmpl-float v2, v26, v18

    if-nez v2, :cond_16

    cmpl-float v2, v27, v18

    if-gtz v2, :cond_17

    :cond_16
    cmpg-float v1, v1, v18

    if-gez v1, :cond_18

    :cond_17
    move/from16 v1, v24

    goto :goto_12

    :cond_18
    const/4 v1, 0x0

    :goto_12
    add-int/lit8 v2, v3, 0x1

    aget v2, v5, v2

    if-eqz v1, :cond_19

    move v1, v15

    goto :goto_13

    :cond_19
    move v1, v14

    :goto_13
    add-float/2addr v2, v1

    invoke-virtual {v8, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_15

    :cond_1a
    invoke-virtual {v8, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v8, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    move/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v31, v5

    move/from16 v30, v6

    goto :goto_14

    :cond_1c
    iget-boolean v1, v13, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    move-result-object v28

    aget v29, v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v30, v2

    move-object/from16 v2, v28

    move/from16 v28, v3

    move/from16 v3, v29

    move/from16 v29, v4

    move-object/from16 v31, v5

    move/from16 v5, v30

    move/from16 v30, v6

    move/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;FFFI)V

    :goto_14
    add-int/lit8 v3, v28, 0x2

    move/from16 v4, v29

    move/from16 v6, v30

    move-object/from16 v5, v31

    goto :goto_11

    :cond_1d
    :goto_15
    if-nez v7, :cond_1e

    add-int/lit8 v19, v19, 0x4

    goto :goto_16

    :cond_1e
    array-length v0, v7

    mul-int/lit8 v0, v0, 0x4

    add-int v0, v0, v19

    move/from16 v19, v0

    :goto_16
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v7, p0

    move/from16 v4, v24

    goto/16 :goto_c

    :cond_1f
    :goto_17
    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    :goto_18
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p0

    move/from16 v9, v20

    move/from16 v10, v21

    move-object/from16 v8, v23

    goto/16 :goto_0

    :cond_20
    return-void
.end method

.method public final initBuffers()V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    move-result v1

    new-array v1, v1, [Lcom/github/mikephil/charting/buffer/BarBuffer;

    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v5, Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v6, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    iget v7, v3, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move v7, v8

    :goto_1
    mul-int/2addr v6, v7

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    iget v3, v3, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    if-le v3, v8, :cond_1

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    invoke-direct {v5, v6, v8}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IZ)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 1

    sub-float v0, p1, p4

    add-float/2addr p1, p4

    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {p4, v0, p2, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Landroid/graphics/RectF;->top:F

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/RectF;->top:F

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p5, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p5, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p5, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method
