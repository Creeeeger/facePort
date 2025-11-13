.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;
.source "DataBarRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;-><init>(Landroid/content/Context;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 28
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntryCount:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->setSectionEntrySize(I)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    return-void
.end method

.method private drawBufferDataSet(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 71
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 72
    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/lit8 v3, v3, -0x4

    add-int/2addr v3, v2

    .line 73
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v5, v3, 0x2

    aget v6, v1, v5

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    goto :goto_2

    .line 77
    :cond_0
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v6, v1, v3

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p4, :cond_2

    .line 84
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    div-int v6, v3, v6

    move-object/from16 v7, p3

    invoke-interface {v7, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    move-object/from16 v7, p3

    .line 87
    :goto_1
    aget v9, v1, v3

    add-int/lit8 v4, v3, 0x1

    .line 88
    aget v10, v1, v4

    .line 89
    aget v11, v1, v5

    add-int/lit8 v6, v3, 0x3

    .line 90
    aget v12, v1, v6

    .line 91
    iget v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    div-int v8, v3, v8

    .line 92
    iget v13, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    if-eq v8, v13, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 94
    rem-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_3

    .line 95
    new-instance v8, Landroid/graphics/RectF;

    aget v3, v1, v3

    aget v4, v1, v4

    aget v5, v1, v5

    aget v6, v1, v6

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    invoke-direct {v0, v8, v3, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;->roundRect(Landroid/graphics/RectF;FF)Landroid/graphics/Path;

    move-result-object v3

    .line 97
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    move-object/from16 v5, p1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 101
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    .line 71
    :goto_2
    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private roundRect(Landroid/graphics/RectF;FF)Landroid/graphics/Path;
    .locals 7

    .line 109
    iget p0, p1, Landroid/graphics/RectF;->top:F

    .line 110
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 111
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 112
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 113
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    cmpg-float v4, p2, v3

    if-gez v4, :cond_0

    move p2, v3

    :cond_0
    cmpg-float v4, p3, v3

    if-gez v4, :cond_1

    move p3, v3

    :cond_1
    sub-float v0, v1, v0

    sub-float/2addr p1, p0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    cmpl-float v6, p2, v5

    if-lez v6, :cond_2

    move p2, v5

    :cond_2
    div-float v5, p1, v4

    cmpl-float v6, p3, v5

    if-lez v6, :cond_3

    move p3, v5

    :cond_3
    mul-float v5, p2, v4

    sub-float/2addr v0, v5

    mul-float/2addr v4, p3

    sub-float/2addr p1, v4

    add-float/2addr p0, p3

    .line 124
    invoke-virtual {v2, v1, p0}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float p0, p3

    neg-float v1, p2

    .line 125
    invoke-virtual {v2, v3, p0, v1, p0}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    neg-float v4, v0

    .line 127
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 128
    invoke-virtual {v2, v1, v3, v1, p3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 130
    invoke-virtual {v2, v3, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 132
    invoke-virtual {v2, v3, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 133
    invoke-virtual {v2, p2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 135
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 136
    invoke-virtual {v2, p2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 137
    invoke-virtual {v2, v3, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p0, p1

    .line 139
    invoke-virtual {v2, v3, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 141
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-object v2
.end method


# virtual methods
.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 3

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V

    .line 57
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    iget p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    mul-int/lit8 p3, p3, 0x2

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->isSectionIsValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 61
    invoke-virtual {v1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result v1

    if-lt v1, p3, :cond_1

    .line 62
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->initAdjustedBuffer(I)V

    .line 63
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;->drawBufferDataSet(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;Z)V

    goto :goto_1

    .line 65
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object p3, p3, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRenderer;->drawBufferDataSet(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;Z)V

    :goto_1
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 12

    .line 33
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object p1

    .line 34
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 36
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-eqz v3, :cond_2

    .line 38
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BarEntry;

    .line 43
    invoke-virtual {p0, v4, v3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    .line 47
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v8

    .line 48
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v9

    .line 49
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v7

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v10, v3, v4

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 50
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic drawValues(Landroid/graphics/Canvas;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawValues(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic setBarColor(I)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->setBarColor(I)V

    return-void
.end method

.method public bridge synthetic setBarRadius(F)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->setBarRadius(F)V

    return-void
.end method

.method public bridge synthetic setEntrySize(I)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->setEntrySize(I)V

    return-void
.end method

.method public bridge synthetic setMissingIndex(I)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->setMissingIndex(I)V

    return-void
.end method
