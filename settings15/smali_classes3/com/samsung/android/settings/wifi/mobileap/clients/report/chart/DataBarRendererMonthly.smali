.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRendererMonthly;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final drawBufferDataSet$1(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/data/BarDataSet;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_7

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/lit8 v3, v3, -0x4

    add-int/2addr v3, v2

    add-int/lit8 v4, v3, 0x2

    aget v5, v1, v4

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    goto/16 :goto_3

    :cond_0
    aget v5, v1, v3

    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p4, :cond_2

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    div-int v6, v3, v6

    move-object/from16 v7, p3

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    move-object/from16 v7, p3

    :goto_1
    aget v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget v6, v1, v5

    aget v6, v1, v4

    add-int/lit8 v6, v3, 0x3

    aget v8, v1, v6

    new-instance v8, Landroid/graphics/RectF;

    aget v3, v1, v3

    aget v5, v1, v5

    aget v4, v1, v4

    aget v6, v1, v6

    invoke-direct {v8, v3, v5, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mRadius:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    iget v5, v8, Landroid/graphics/RectF;->left:F

    iget v6, v8, Landroid/graphics/RectF;->right:F

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    const/4 v10, 0x0

    cmpg-float v11, v3, v10

    if-gez v11, :cond_3

    move v12, v10

    goto :goto_2

    :cond_3
    move v12, v3

    :goto_2
    if-gez v11, :cond_4

    move v3, v10

    :cond_4
    sub-float v5, v6, v5

    sub-float/2addr v8, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float v13, v5, v11

    cmpl-float v14, v12, v13

    if-lez v14, :cond_5

    move v12, v13

    :cond_5
    div-float v13, v8, v11

    cmpl-float v14, v3, v13

    if-lez v14, :cond_6

    move v3, v13

    :cond_6
    mul-float v13, v12, v11

    sub-float/2addr v5, v13

    mul-float/2addr v11, v3

    sub-float/2addr v8, v11

    add-float/2addr v4, v3

    invoke-virtual {v9, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float v4, v3

    neg-float v6, v12

    invoke-virtual {v9, v10, v4, v6, v4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    neg-float v11, v5

    invoke-virtual {v9, v11, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v9, v6, v10, v6, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v9, v10, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v9, v5, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v9, v10, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float v3, v8

    invoke-virtual {v9, v10, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v9, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    add-int/2addr v2, v3

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public final drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V

    iget-object p3, p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mEntrySize:I

    mul-int/lit8 p3, p3, 0x2

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mSectionEntrySize:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object v2, v2, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    array-length v3, v2

    rem-int/2addr v3, v1

    if-nez v3, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mMissingIndex:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    array-length v1, v2

    if-lt v1, p3, :cond_1

    array-length p3, v2

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->initAdjustedBuffer(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mAdjustedBuffer:[F

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRendererMonthly;->drawBufferDataSet$1(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/data/BarDataSet;Z)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;->mBuffer:Lcom/github/mikephil/charting/buffer/BarBuffer;

    iget-object p3, p3, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataBarRendererMonthly;->drawBufferDataSet$1(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/data/BarDataSet;Z)V

    :goto_1
    return-void
.end method

.method public final drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 12

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object p1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    check-cast p1, Lcom/github/mikephil/charting/data/BarData;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    iget v3, v2, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighlightEnabled:Z

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    iget v5, v2, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    iget v6, v2, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    invoke-virtual {v3, v5, v6, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0, v4, v3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    iget-object v3, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    check-cast v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v5, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    iget v9, v4, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    iget v7, v4, Lcom/github/mikephil/charting/data/Entry;->x:F

    iget v3, p1, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v10, v3, v4

    move-object v6, p0

    move v8, v9

    invoke-virtual/range {v6 .. v11}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v4, v2, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawX:F

    iput v3, v2, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawY:F

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
