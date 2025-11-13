.class public Lcom/github/mikephil/charting/charts/HorizontalBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "HorizontalBarChart.java"


# instance fields
.field protected mGetPositionBuffer:[F

.field private mOffsetsBuffer:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mOffsetsBuffer:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 168
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mGetPositionBuffer:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mOffsetsBuffer:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 168
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mGetPositionBuffer:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mOffsetsBuffer:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 168
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mGetPositionBuffer:[F

    return-void
.end method


# virtual methods
.method public calculateOffsets()V
    .locals 9

    .line 68
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mOffsetsBuffer:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateLegendOffsets(Landroid/graphics/RectF;)V

    .line 70
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    .line 71
    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    .line 72
    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    .line 73
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    .line 76
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredHeightSpace(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v3, v2

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredHeightSpace(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v0, v2

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v5, v2, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedWidth:I

    int-to-float v5, v5

    .line 86
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v6, :cond_2

    add-float/2addr v1, v5

    goto :goto_1

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v6, :cond_3

    :goto_0
    add-float/2addr v4, v5

    goto :goto_1

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v6, :cond_4

    add-float/2addr v1, v5

    goto :goto_0

    .line 104
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraTopOffset()F

    move-result v2

    add-float/2addr v3, v2

    .line 105
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraRightOffset()F

    move-result v2

    add-float/2addr v4, v2

    .line 106
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraBottomOffset()F

    move-result v2

    add-float/2addr v0, v2

    .line 107
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraLeftOffset()F

    move-result v2

    add-float/2addr v1, v2

    .line 109
    iget v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    .line 111
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 112
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 114
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 115
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 111
    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 117
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v2, :cond_5

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "offsetLeft: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetTop: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetRight: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetBottom: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->prepareOffsetMatrix()V

    .line 125
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->prepareValuePxMatrix()V

    return-void
.end method

.method public getHighestVisibleX()F
    .locals 4

    .line 221
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 222
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 223
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    float-to-double v0, v0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    iget-wide v2, p0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_1

    .line 204
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz p0, :cond_0

    const-string p0, "MPAndroidChart"

    const-string p1, "Can\'t select by touch. No data set."

    .line 205
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/github/mikephil/charting/highlight/IHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p0

    return-object p0
.end method

.method public getLowestVisibleX()F
    .locals 4

    .line 213
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 214
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 213
    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 215
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    float-to-double v0, v0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    iget-wide v2, p0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method protected getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 138
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawY()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawX()F

    move-result p1

    const/4 v0, 0x1

    aput p1, p0, v0

    return-object p0
.end method

.method protected init()V
    .locals 4

    .line 46
    new-instance v0, Lcom/github/mikephil/charting/utils/HorizontalViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/HorizontalViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 48
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarChart;->init()V

    .line 50
    new-instance v0, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 51
    new-instance v0, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 53
    new-instance v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 54
    new-instance v0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 56
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 57
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 58
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/BarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    return-void
.end method

.method protected prepareValuePxMatrix()V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    iget v3, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 132
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    div-float/2addr v0, p1

    .line 234
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleY(F)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    div-float/2addr v0, p1

    .line 240
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleY(F)V

    return-void
.end method

.method public setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result p2

    div-float/2addr p2, p1

    .line 253
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleX(F)V

    return-void
.end method
