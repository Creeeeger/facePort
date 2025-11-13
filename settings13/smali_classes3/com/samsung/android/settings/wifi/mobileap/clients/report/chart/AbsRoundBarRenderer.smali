.class abstract Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "AbsRoundBarRenderer.java"


# instance fields
.field mAdjustedBuffer:[F

.field mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

.field mChartBarOutline:Landroid/graphics/Path;

.field mEntrySize:I

.field mMissingIndex:I

.field mRadius:F

.field mSectionEntryCount:I

.field mSectionEntrySize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 1

    .line 40
    invoke-direct {p0, p2, p3, p4}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/4 p3, 0x4

    .line 29
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    const/4 p4, 0x6

    .line 33
    iput p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntryCount:I

    .line 41
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 42
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->setEntrySize(I)V

    .line 44
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->dw_data_outline_light_color_no_theme:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/settings/R$dimen;->home_screen_time_graph_border:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mChartBarOutline:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 3

    .line 67
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 71
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->initBuffers()V

    .line 72
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v2, v2, p3

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 73
    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->setPhases(FF)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 75
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 76
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarWidth(F)V

    .line 77
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object p0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 11

    .line 84
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    .line 86
    array-length v7, p2

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_6

    aget-object v10, p2, v9

    .line 88
    invoke-virtual {v10}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-eqz v0, :cond_5

    .line 90
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 93
    :cond_0
    invoke-virtual {v10}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    .line 100
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;->getHighLightColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightAlpha()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    invoke-virtual {v10}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v8

    :goto_1
    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isHighlightFullBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v0

    .line 113
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v2

    neg-float v2, v2

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getRanges()[Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v0

    invoke-virtual {v10}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v2

    aget-object v0, v0, v2

    .line 119
    iget v2, v0, Lcom/github/mikephil/charting/highlight/Range;->from:F

    .line 120
    iget v0, v0, Lcom/github/mikephil/charting/highlight/Range;->to:F

    move v3, v0

    goto :goto_3

    .line 124
    :cond_4
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v0

    const/4 v2, 0x0

    :goto_2
    move v3, v2

    move v2, v0

    .line 128
    :goto_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 130
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v10, v0}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V

    .line 132
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 139
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValues(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getAdjustedBuffer()[F
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [F

    :cond_0
    return-object p0
.end method

.method getSectionEndIndex(I)I
    .locals 1

    .line 188
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntryCount:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntrySize:I

    if-ltz p0, :cond_0

    .line 189
    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getSectionStartIndex(I)I
    .locals 1

    .line 179
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntryCount:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntrySize:I

    if-ltz p0, :cond_0

    .line 180
    div-int/2addr p1, v0

    mul-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method initAdjustedBuffer(I)V
    .locals 9

    .line 204
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    .line 205
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v1, p1, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result p1

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->getSectionStartIndex(I)I

    move-result p1

    .line 210
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->getSectionEndIndex(I)I

    move-result v1

    .line 212
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/lit8 v4, v3, -0x2

    aget v4, v2, v4

    aget v5, v2, v0

    sub-float/2addr v4, v5

    .line 213
    aget v5, v2, v3

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    sub-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v2, 0x0

    .line 218
    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntryCount:I

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_1

    add-int/lit8 v2, v3, -0x1

    int-to-float v2, v2

    mul-float/2addr v4, v2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    int-to-float v2, v3

    div-float v2, v4, v2

    :cond_1
    move v3, p1

    :goto_0
    if-ge v3, v1, :cond_3

    .line 224
    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/lit8 v5, v4, -0x4

    add-int/2addr v5, v3

    .line 225
    div-int v6, v5, v4

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    if-eq v6, v7, :cond_2

    .line 226
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    add-int/lit8 v7, v4, -0x4

    add-int/2addr v7, p1

    aget v7, v6, v7

    int-to-float v8, v0

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v7, v4, -0x2

    add-int/2addr v7, p1

    .line 227
    aget v7, v6, v7

    add-float/2addr v7, v8

    aput v7, v6, v5

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/2addr v3, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method isSectionIsValid()Z
    .locals 2

    .line 196
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntrySize:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntrySize:I

    rem-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setBarColor(I)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBarRadius(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    return-void
.end method

.method public setEntrySize(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    return-void
.end method

.method public setMissingIndex(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 165
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    rsub-int/lit8 p1, p1, 0x17

    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    :cond_1
    return-void
.end method

.method setSectionEntrySize(I)V
    .locals 1

    .line 160
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntrySize:I

    return-void
.end method
